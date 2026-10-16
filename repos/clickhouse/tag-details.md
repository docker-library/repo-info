<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.52`](#clickhouse26352)
-	[`clickhouse:26.3.52-jammy`](#clickhouse26352-jammy)
-	[`clickhouse:26.3.52.9`](#clickhouse263529)
-	[`clickhouse:26.3.52.9-jammy`](#clickhouse263529-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.31`](#clickhouse26731)
-	[`clickhouse:26.7.31-jammy`](#clickhouse26731-jammy)
-	[`clickhouse:26.7.31.12`](#clickhouse2673112)
-	[`clickhouse:26.7.31.12-jammy`](#clickhouse2673112-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.28`](#clickhouse26828)
-	[`clickhouse:26.8.28-jammy`](#clickhouse26828-jammy)
-	[`clickhouse:26.8.28.14`](#clickhouse2682814)
-	[`clickhouse:26.8.28.14-jammy`](#clickhouse2682814-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.19`](#clickhouse26919)
-	[`clickhouse:26.9.19-jammy`](#clickhouse26919-jammy)
-	[`clickhouse:26.9.19.9`](#clickhouse269199)
-	[`clickhouse:26.9.19.9-jammy`](#clickhouse269199-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.52`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.52` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.52` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.52-jammy`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.52-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.52-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.52.9`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.52.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.52.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.52.9-jammy`

```console
$ docker pull clickhouse@sha256:80059f8dc59219faf92ed2bd88513bed8b118bcc478e5ccc73b0160035d11794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.52.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3ae72151eb7c1405e6187197c974288d18682289fb41bde5cee35f41a5c825a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266981998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abecdb74afe163b7f2d187717b1288c6c9e2cba4e266d8fb0b44755edb57ed1`
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
# Fri, 16 Oct 2026 18:06:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:55 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:21 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed16a177fea215cd66460ac6136e026412d1943eac04c2d1931aa5f774d70c13`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 7.6 MB (7556498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596c8ab093dc9c9e2f2365106fe7cbc3c738a8e2c6253d873adf7e53bf29e148`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 228.8 MB (228803818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06d465fd05f4ca29b2dfbb4899e2118b6ac0e5b992a63ec8c4de236e858da4a`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47565a28bae90e3aa78ddfaace53f93faef7835eb9c8c00a1a72e09bf61e2fba`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cbe874977b317a0c13306bd36cd31f3bd543cbec97a8149f34b7ac8861c4e6`  
		Last Modified: Fri, 16 Oct 2026 18:07:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c3f42be9855bdb3e3e9d6a05eff450eafbefeb3dcee971af36b272193ec571`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d911b06933a3e175e04af702caec2e421dc0b4d3ccbabd5b66ad20ed2a3f51a`  
		Last Modified: Fri, 16 Oct 2026 18:07:46 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:233959e3cf374cc3f5f017515fe01d73cf7a0e3840dc4378986c5a38c9a582fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc94575baeec19958ec94748db73de0f347884bcf999e73ea83002bca369cc2`

```dockerfile
```

-	Layers:
	-	`sha256:1a97ccfde2655fbfa358fc1a5812ff0151ff709a12300bdf15a8cb27745995b7`  
		Last Modified: Fri, 16 Oct 2026 18:07:44 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.52.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:302000cd52f35e112849b646271b5576bbc7aa97257c8946f8c982afbf4f5216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248664390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15f11d929de14512b0b6aef5718f71d56c766d19136801e31a286c89681dc0a`
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
# Fri, 16 Oct 2026 18:06:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:33 GMT
ARG VERSION=26.3.52.9
# Fri, 16 Oct 2026 18:06:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c72348ea9d8c2531d66b400aabcbb2b64400ad401d582eda2bd71d6a851832`  
		Last Modified: Fri, 16 Oct 2026 18:07:29 GMT  
		Size: 7.5 MB (7536500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9acaee793e9c4bea0efd7b2a68b8526fd8cee828fa8e129d87a955f0168e50`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 212.6 MB (212573702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef8a5ae050635027d292f2af1558a3667ef8f14dac45315025e68d74da5c8c`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c9dc77e504c205d811a3b452bcc083aa6ba94940148a4f88727feee976f9cd`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640a8e21a3119335f3f35d54fee455eefa7bc153b0794b2ca4ca12b2063d2372`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48483f05932b14f357f0178d40dc1c4fc5f0d0882de847aa5f793d5c73b2c7c`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.52.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ed4268c346b5bfe07b61a5f48e470916ceaf7c387cf1ba7294f9f0d379458f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b2a18581ea84b0c98bc171b4efa2bf6da708b4abb09326b0202c8f81044df`

```dockerfile
```

-	Layers:
	-	`sha256:612572cb05727196e2b486118556373eb996d94ca4cbf4d3d544b9f267fd4b61`  
		Last Modified: Fri, 16 Oct 2026 18:07:28 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.31`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.31` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.31` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.31-jammy`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.31-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.31-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.31.12`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.31.12` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31.12` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.31.12` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31.12` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.31.12-jammy`

```console
$ docker pull clickhouse@sha256:b142155a177e5fa46fce85a6e44c0464eb15e3d8e8579cd072db05abe4c895c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.31.12-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f1975bc172654793b9b0fb09c63aad172107e50ea756e31702227c5b3287f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268368203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881c29e78346e3ce97d4cea82436fcde47e20b95a623911af9e06aaea47cf3fb`
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
# Fri, 16 Oct 2026 18:06:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:47 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:23 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3e133e2bf467dbb7f99e44e36bb55d7110623f371a1925fe22027c96689eeb`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 7.6 MB (7556517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc488746ccfe60cbf1c13a0d2c230c9ea79f601a77e65007701d477253deafc2`  
		Last Modified: Fri, 16 Oct 2026 18:07:53 GMT  
		Size: 230.2 MB (230190007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa10e883e38ccb013916abb55cf3fb4b3a1942b4afc3a57312ae545da52c9b`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aacc30aa342b926ae2301b32541b550fa826f20c45b712f831b6c8197b1a71`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c1603d9848c410f42a532cc6448f2bb3f9883f9dce3534a43522c9c74f3f74`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60812fea19e7e3c539f419904b950f389a71ecc3e9e3cc82da41f6074ddcb7`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa863ee2d705085f7435db68d98842a2eb5af1f1354a0a5d9314be7e47ae58`  
		Last Modified: Fri, 16 Oct 2026 18:07:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31.12-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ca12bff70eaa79674bfacde404f5dbac54eebae607eb7355281fd2ffbca5a3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b84f66d0420bb0ed266d941bc2c4137faf1a64df43acb588a05d187ce918fa7`

```dockerfile
```

-	Layers:
	-	`sha256:c55cbf8e2ffbf4648ea9551fe289355b85a6e3cecd0ec9c290f27b1f90d87b87`  
		Last Modified: Fri, 16 Oct 2026 18:07:49 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.31.12-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:81ed62135d453666adc6f5625d56a3d9231075c92b098bc51bf29ecab0cdb328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251718827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cede70748c8f7da1796309fe0470939beb50cd026bca66937aac319cabe808`
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
# Fri, 16 Oct 2026 18:06:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:10 GMT
ARG VERSION=26.7.31.12
# Fri, 16 Oct 2026 18:06:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae6333b8d35ad11dc9e15768ceede1dc9e605b7c36e51589135d656dc10eca4`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 7.5 MB (7536427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20655c46ac1624fedc8098f61441a7f89849495ccd8ecacbb43522785875cdbf`  
		Last Modified: Fri, 16 Oct 2026 18:07:13 GMT  
		Size: 215.6 MB (215628213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eb7c0964af80e63c6467eb45c9f8ec0c38598fbf70a1625dd0d4df947c5d`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a80f0a2440d705badb2a96b21247d04f597bbc40d2858e68738cf9f3d7d5265`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cd0d0e2b7d783ce8280036e9007b70beb49cec18f7e417ad2af2318f3d7f75`  
		Last Modified: Fri, 16 Oct 2026 18:07:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3934783357cbda2847b4e1aadd6fe21735860dd7f2fcdbd690ccd42c2b93b257`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f761eca0005dee7eb3f6bb0baeff2995fe3099b4441c87f923ebd1dfeb23d6`  
		Last Modified: Fri, 16 Oct 2026 18:07:10 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.31.12-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7fbb1b050dd84764b75bdfb66227f499b29ec438b6164496b779bf92d9c71c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d045ad784a051810656ceb90d1430e1e339187f52952929233bfc5311224f0`

```dockerfile
```

-	Layers:
	-	`sha256:3acd00c5646bbb18258abd188c5466c861e2be4153082860b150acc348b57fc1`  
		Last Modified: Fri, 16 Oct 2026 18:07:08 GMT  
		Size: 26.9 KB (26941 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.28`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.28` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.28` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.28-jammy`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.28-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.28-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.28.14`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.28.14` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28.14` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.28.14` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28.14` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.28.14-jammy`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.28.14-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28.14-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.28.14-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.28.14-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.19`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.19` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.19` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.19-jammy`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.19-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.19-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.19.9`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.19.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.19.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.19.9-jammy`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.19.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.19.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.19.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:2631b1f0ac187b1252d52b9ae22098a2e7240b80e7b8c9972668b0889389abe6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a24a01f78a52c4997c0663ec79f1a57fa5f442be3dcad8a0fc44c09bc88330c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e68d352adf8ed0c55841a012a94f4dae597a7cfc3a5d31bccdf45979762140`
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
# Fri, 16 Oct 2026 18:05:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:38 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:09 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad5e7637fbc2cf1c3ef5045397e8ae7c57069feb5ca69c674d9c5e7bca400ce`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 7.6 MB (7556549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975f7dddce0fdc62dd0975685f2ec6fefd04c9d5dadf0db52db6bc1e5b6a55bb`  
		Last Modified: Fri, 16 Oct 2026 18:06:40 GMT  
		Size: 257.0 MB (257021627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9ab56dc452093e84826cb16edce4f67bd7c517e84d3c9202ae79072ce187c`  
		Last Modified: Fri, 16 Oct 2026 18:06:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b104a448109bff250784c5bb09fc221de5df939e08514574dbb1dbc6ad8eea7c`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498121a8474529ac40cbae308296e4d6280825c484e8c6439abc0a317885c45c`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12c642450fc15cdd66adee74e813fd2accfdc40200d55dc3b73867b99653074`  
		Last Modified: Fri, 16 Oct 2026 18:06:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a2152af4946d1a4cf815d219ec41fa9ebd2ced48ff98a13d95e5b01518303e`  
		Last Modified: Fri, 16 Oct 2026 18:06:37 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9bd7d0db5ceac03a6fb93cfabd21fe92f651dc2a7fbe5c6ef5efe97d1890c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075afbd23a9893427b86529730fb1191e82b2e331331f9b92c39bc46a48d63`

```dockerfile
```

-	Layers:
	-	`sha256:6c57e18b7b6855601c1a52047aeb31ed09958a09aa184949392777294605c1d2`  
		Last Modified: Fri, 16 Oct 2026 18:06:35 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89f017164cd8988ce06bc825fe7357f2284b363f8fea89571215b48ec2ae7c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272511402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad648a0af47ac2b7570c6be3c35a2dda36472c6b0b393dd6be6101dd4fc27a6`
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
# Fri, 16 Oct 2026 18:05:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:05:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:05:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:05:10 GMT
ARG VERSION=26.9.19.9
# Fri, 16 Oct 2026 18:05:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:05:46 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:05:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:05:46 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:05:46 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:05:46 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fae23a4c3bd035069d0764c20ef238975bc2b896ee6069483d6626019aa83`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 7.5 MB (7536371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6d3cba07c04eeb9aa0ef2116770f9f844baa21b7bd48f7539c9afa92e50fab`  
		Last Modified: Fri, 16 Oct 2026 18:06:14 GMT  
		Size: 236.4 MB (236420577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606b50f6e1322e6a2d9f5aa0cb2f38e9c41a8e90553c8ea89d8883b84f076ee`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca8afbf4c319060b011fb1a9e2b1cdf87e864cffdd122e2ea8bd3852b0545f3`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e66858f60a06911d4ae9a4eeaec67ab6199a020383f244d1bc731a17c464ff`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c891b59e15a960b1c668ab92618d5768e64bf62a926179326f7107ddeb416e37`  
		Last Modified: Fri, 16 Oct 2026 18:06:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70d5f0c99a59a8c719b3dc15ca4e0a8818bb1a372ccc9a5e619049228dc6d67`  
		Last Modified: Fri, 16 Oct 2026 18:06:10 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b87391b3fe85db4c57d47da53e7e5e2d720a6f11110d2a83ba8568e8a87c4d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57eb517cc5bd68db499eeddc23aa1296a0b38e677e92a4e806b1a1179ceec7f7`

```dockerfile
```

-	Layers:
	-	`sha256:c9a8e4f3342f43501011454af05701dc0d5cff7151ca7e454fa7724fb48f8e2d`  
		Last Modified: Fri, 16 Oct 2026 18:06:08 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:8809912fb3e1291945afab1272dbf6549c6b32f0df1baf3db2fbb6f2205ba676
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6b12a8553b310c30f1b9c4abab6a1d2cd78436ea369e5be739c0c98d4a618ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279719939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dd59ff125594260fe64dc4b7bf538a1ab02580c78b2744abaaa97df4621b40`
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
# Fri, 16 Oct 2026 18:06:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:34 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:07:06 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:07:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:07:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:07:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:07:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:07:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a9d2b39af093ad30f8ef146830b5eb8778e0e1523a594a5bcf2c7bf89f246e`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 7.6 MB (7556523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bd59093ff218fd78ed7dc06861b52e1f4a241d0c537a37c4ae5e90badd64ca`  
		Last Modified: Fri, 16 Oct 2026 18:07:38 GMT  
		Size: 241.5 MB (241541735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ec66675a2d76c400f7a7cbf43f53edcaa09992901cc5d89be2ca1b59b3a57`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ffbeb3f8b6bc5968ad775f86bdae06b634a74c0525e56809c872e7d64370e5`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb495f51e275e5045f6111bc89ddbb5c28eb6b5c9c86860fa79151027f9e20e9`  
		Last Modified: Fri, 16 Oct 2026 18:07:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89d1c40febfd8899ea268b01b29ab27f808ae7fed2ba2a03abb8be244ec2e36`  
		Last Modified: Fri, 16 Oct 2026 18:07:35 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10e8067def20375c0687d1709ca35842147020d1a07406a55b7e342495e2c73`  
		Last Modified: Fri, 16 Oct 2026 18:07:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9369f537cf2ff979f478094f72262278eab8065a4f65b08179216e5a5b6c67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc08a4c42ad8d7b3a48ab069a6e7f901ade3e52eca10acfb51cbb4da92cb5bf8`

```dockerfile
```

-	Layers:
	-	`sha256:b378cad99260588a953b3c214cacd75bca5d25391f64d81091595f9f49c0a132`  
		Last Modified: Fri, 16 Oct 2026 18:07:33 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e008699d35f7a6945fb9514017afbe7a90db317a03f4e1b587c22a3cc6302a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262730888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97fbc5ba3fab3a0003dc9c27a057281975f6e5c1579a51d60dd1291d4d20657`
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
# Fri, 16 Oct 2026 18:06:06 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 16 Oct 2026 18:06:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPO_CHANNEL=stable
# Fri, 16 Oct 2026 18:06:06 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 16 Oct 2026 18:06:06 GMT
ARG VERSION=26.8.28.14
# Fri, 16 Oct 2026 18:06:06 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 16 Oct 2026 18:06:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Oct 2026 18:06:37 GMT
ENV TZ=UTC
# Fri, 16 Oct 2026 18:06:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 16 Oct 2026 18:06:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 16 Oct 2026 18:06:37 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 16 Oct 2026 18:06:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 16 Oct 2026 18:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba6b19488fac2f3513014b640d70fa7d751fb89a9cea249a3cfed9db3713dd2`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 7.5 MB (7536409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ae62cb57963ef8509f78025cbf2201e81498f2f86f4be279b00729215ce8b6`  
		Last Modified: Fri, 16 Oct 2026 18:07:03 GMT  
		Size: 226.6 MB (226640291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22af8f59ddfe4b3b9effa20d47962f17258cb7e3fa5ee2f67b1ea4dfdc0e7a`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b02d1814dfff0537aff3b8f15b341302ba284bdd7fb17aec644493d1ea010`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846962fd6aad2e317b1ba00f5dbe98d1967fe741a3b690fa7fa3b82047b3f472`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89c33c22095ab5f8e2ea61158aaa9eba5319696e692fcb08a944083f80ccaaa`  
		Last Modified: Fri, 16 Oct 2026 18:07:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e5eb0218f6610bab71107b1c848c426e592161fb79fda0154a56ea319477a6`  
		Last Modified: Fri, 16 Oct 2026 18:07:01 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:765cd8ce4b19d674f06b4a14142e5c854c3292b73b31531d279e598365e98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afabc84d96fa73717f61a8f88221a2b86d73a2ef9f526ad8b6cd00b09d06f93a`

```dockerfile
```

-	Layers:
	-	`sha256:b58b57b49d6e5ffdf951bbe04903c60d6963b3c96f552aaa47e114eac6533faf`  
		Last Modified: Fri, 16 Oct 2026 18:06:59 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
