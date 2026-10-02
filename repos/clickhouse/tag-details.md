<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.38`](#clickhouse26338)
-	[`clickhouse:26.3.38-jammy`](#clickhouse26338-jammy)
-	[`clickhouse:26.3.38.2`](#clickhouse263382)
-	[`clickhouse:26.3.38.2-jammy`](#clickhouse263382-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.19`](#clickhouse26719)
-	[`clickhouse:26.7.19-jammy`](#clickhouse26719-jammy)
-	[`clickhouse:26.7.19.5`](#clickhouse267195)
-	[`clickhouse:26.7.19.5-jammy`](#clickhouse267195-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.15`](#clickhouse26815)
-	[`clickhouse:26.8.15-jammy`](#clickhouse26815-jammy)
-	[`clickhouse:26.8.15.10`](#clickhouse2681510)
-	[`clickhouse:26.8.15.10-jammy`](#clickhouse2681510-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.8`](#clickhouse2698)
-	[`clickhouse:26.9.8-jammy`](#clickhouse2698-jammy)
-	[`clickhouse:26.9.8.3`](#clickhouse26983)
-	[`clickhouse:26.9.8.3-jammy`](#clickhouse26983-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.38`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.38` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.38` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.38-jammy`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.38-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.38-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.38.2`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.38.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.38.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.38.2-jammy`

```console
$ docker pull clickhouse@sha256:ea3ff4a4aa2a097ddaa91facb6c808f5045c661b2a9fe261f25de579f6e7c6da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.38.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf7ccf3ecf3b3aa7fe29f4bbbf770a56642fa4a1e2a901893f5a61a34beb6f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165dada082cacc1a4fe4d8f469e6bad23cc2d0050300a45b95fddf58a6d7f14`
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
# Fri, 02 Oct 2026 18:23:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:38 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:23:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:09 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af75fa31ea99c7bc0d555596d520acfef48f7cab2ec48bd9aae20205722e076`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 7.6 MB (7554099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7690a644e1cefcc0138df69af5b6589b122af9c31211a80270cbf67080e2e985`  
		Last Modified: Fri, 02 Oct 2026 18:24:37 GMT  
		Size: 228.7 MB (228724960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3628efb4cab80bd60bb076681f46c454dc9e480d445dc369ee1f99bfc17fb52a`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8e51e72428437ae3f2467d4080218f7afa3d144919512d74e705b9eb72f4e4`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7390d2d044d43308f03c383bb011535938d386a7ab84e6f2e9bcc14afe5073fe`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26e3d6f7e77ff63a4804dd65ed6c5ee801c33c3e448ac93ad3d7c6eef7b21f`  
		Last Modified: Fri, 02 Oct 2026 18:24:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12c3459eada1f30cc5d0a7a9be0c1bac9dd67d7daf4ac186f1083c52937fac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cb80fab8768450270f49615f7a2ce3aa772cb27a4a1a6ae2c12bd998decca0`

```dockerfile
```

-	Layers:
	-	`sha256:dc898db1e0a8aea7115a43b3adf28e727e105a4ccf825cac10204a2cf9ded466`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.38.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fea639ac7461f53c11c0139aa4b795f62219a91091c84f429f903955d8951d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248603688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f19369c5509bba92340429b149c995386f6863a3c1689f1054fcd4cad483b8`
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
# Fri, 02 Oct 2026 18:24:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:51 GMT
ARG VERSION=26.3.38.2
# Fri, 02 Oct 2026 18:24:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.38.2 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60435548879d3ec197ce63e650d742144cfdd3029f8fb0e7b6b3d9a5ace2f75b`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 7.5 MB (7534179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2509cdebe21f55a5aa77cee91593794838ee513f7d9ba3010d87e0ec30cdc15c`  
		Last Modified: Fri, 02 Oct 2026 18:25:47 GMT  
		Size: 212.5 MB (212515324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5308efa52f1833b9cd770efc6b6f9a69ac4a9c8485d70db566cfe68bbaa30e01`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6df88d38636e9bcfe578b2dd4906ee645766a812a6b17abc79cd67eabb3e19`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33816c68a5987f62d18f3e387bc819d7d481f6e4d734d6db934fe4c61363a62c`  
		Last Modified: Fri, 02 Oct 2026 18:25:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9b4671f8b9faf9a3e87056a37ec10f1cdf7b21f4d0c7d29d3909b6ddef356`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e170c62e6c54938d74346426885f17fda5e4806a0f78f4abff98f487afcd8`  
		Last Modified: Fri, 02 Oct 2026 18:25:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.38.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:efdc4abaa73e47be8c67492c43a32a01186da51f82923371c7e75c422851af32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802eac6c47e5c42a4b7164c7a27046c714816d0181b85487323038d1a822c332`

```dockerfile
```

-	Layers:
	-	`sha256:143eab345a34c6297fcf7b88ec9d64b9e938779f9f5889a493d5892ec98cae84`  
		Last Modified: Fri, 02 Oct 2026 18:25:43 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.19`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.19` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.19` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.19-jammy`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.19-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.19-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.19.5`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.19.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.19.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.19.5-jammy`

```console
$ docker pull clickhouse@sha256:522d4093fa03191adcf9123339e49efe75f9378fd9ba291dab9ee33496411695
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.19.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:325dd76f1aff1d2cecddbc9a4868dfb196cac533093de9e94c009d097f7ea82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268266427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8866c8a9397460bfc967fd383e886032eaf5219d00b326632ac1243a88df87`
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
# Fri, 02 Oct 2026 18:23:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:39 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:23:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:09 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba42740deeed667ca87d64b8d25aab775909d93d29a0a5b6070683ebac43b0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 7.6 MB (7554033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f3a14a5e2fbd8caefa0e6fe16457a30b9e0b7d201d9f92a9fc91f44ef326f`  
		Last Modified: Fri, 02 Oct 2026 18:24:40 GMT  
		Size: 230.1 MB (230090714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb2de53e63c2d415f3ad017e19cfc2b85707a7314c3c26421ac8be8cafafbd`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be62b6ca714882b7739dac7fb7ca90d001c341c31787749683027c32b00510c`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0878c608c3144141c0788f9c64b05f7d4d8c42574f96671b3360d6596c3098a`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54006857f221f974588bb5b1c63ac655c40b63c21e00c22443c03829184a4b2`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025627a06385f3a9284851926c4b8aebec9bd7f036003a662e9f93568a222aed`  
		Last Modified: Fri, 02 Oct 2026 18:24:36 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a5b124fbd01c71f64dff59b06eecb7f2ca999cc0c77541213423dbd35aa25145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb4c2ec9d175413d806d70e4a4d43c894a0b1bf8cbd4a10bfc7eb527708bd7`

```dockerfile
```

-	Layers:
	-	`sha256:82f225431bfd6ae2750a00f7ba0cc4bce46915ecd74ffaa4ba7d9802accfd1cb`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.19.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:aa7715dda208e57b36c957e8f110927e14eaa6365729c29161cc53823e28c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251583618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5c819b2b2a0797506f24cb92358389891b4375a3835ee88c64ab7c1fd3da4`
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
# Fri, 02 Oct 2026 18:24:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:38 GMT
ARG VERSION=26.7.19.5
# Fri, 02 Oct 2026 18:24:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:10 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.19.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6995014e034187072b60a49e3d512203bf9a66b7c4e58a1ab7aa5231c845f2c`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 7.5 MB (7534076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7726fe17f7c3671643a1333fbe0e66937f2d7d390893144634615b969939909f`  
		Last Modified: Fri, 02 Oct 2026 18:25:37 GMT  
		Size: 215.5 MB (215495352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fba026db7bd69caa275ee8f14f29c3bacbc143589b28353481272feb618a4b`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4294657c43603e45328296ca15ecd6b1d76671de1c3bfc8cf33c889f34fd52`  
		Last Modified: Fri, 02 Oct 2026 18:25:33 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e22da18c954d3ff9a5f286f1f21ce02c9eeef406ed88cdc4bc3948939060198`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95e62dc1990a9cff9bf5e92431d3920258d7b44a71056e9753f1fe8db384726`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058b39146d4858d62e76ed926e71f605dab35d29e717c1c91e75ef269aa263aa`  
		Last Modified: Fri, 02 Oct 2026 18:25:34 GMT  
		Size: 3.6 KB (3640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.19.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aaf1644492cb1ebbd8ca166c6d0d5e1b29ddc56eec717f5fe613fc5005c002f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02862d7826c5d68d562ab1327c3cbe42cb3923eb29a06f4643bc070b79e94407`

```dockerfile
```

-	Layers:
	-	`sha256:2950b7006617027c3c09bd29c5d9cfdd700d8cf35ab3516f45162d723be7e0fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.15`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.15` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.15` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.15-jammy`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.15-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.15-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.15.10`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.15.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.15.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.15.10-jammy`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.15.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.15.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.15.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.8`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.8-jammy`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.8.3`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.8.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.8.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.8.3-jammy`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.8.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.8.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.8.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
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
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
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
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:47ef918e86854015f4e75848fe37f893808dd379055b0fcab1adcde583e693d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47ba0f6854510e3d9910303b8362b704f7021150351254e6634df295c4ec0b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44dc5afd1b11e54eeaa28d7144c08e0b4587452147fbadb1d5e621a3a05e086`
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
# Fri, 02 Oct 2026 18:23:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:31 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:23:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:03 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27adfec7e4dda38c69691d9a8391085cef0d70cb35dc35fe7275a03e2119021a`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 7.6 MB (7554188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b66503d46b311013a593fc525f217d7f422849d78df0f0e266cc2b35dfcbee0`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 241.3 MB (241295411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b2a081d3660ac8a36ce682813f9b00b95a294ca87c28eb555c70997c14327f`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa70f9e257a016d589fc6c11df9502ac2c729b9256c10bb280480e31e1635ae`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc091962183bba6926cddd083038478508b6d696f59fc3e819c3cfb2690b4b66`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7185a2a04c9cf4b98fe6f3624107765a9e140fa6258c41f2bcf13fb134dcfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d016b56ff698e123238f391850dbdfa98b5841dacbf5386f70a4e4bae741ea`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2d796ed5aa47e4b02c743bc162f3e49588b712416ff92455d7c0711b9f323c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c420c053ac790fe6791b5eab429568b02b1c9e92e8c9e918a27626f33b0cc`

```dockerfile
```

-	Layers:
	-	`sha256:9058bdf5d26e99940a9923a926701aa7c5cc191d177169bfb054de908f835ca0`  
		Last Modified: Fri, 02 Oct 2026 18:24:30 GMT  
		Size: 27.4 KB (27364 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6114d91cb7773fed37ae01f4181525850e813d12816509ab6ba25829ca550883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262514889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95e962b98b0bb3a866acba3fcb4da878ab65b4752f38454978263e114c6876`
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
# Fri, 02 Oct 2026 18:24:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:30 GMT
ARG VERSION=26.8.15.10
# Fri, 02 Oct 2026 18:24:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:01 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.15.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:01 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dac6bd374c938cfb6511757cdd3bb046f7d757dc5cf8f6a7debe5b70ab8317`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 7.5 MB (7534110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a2920ccfa00023450d7d422fd8850cfb4f0fb40729cf0dd3f4cb60841c812`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 226.4 MB (226426593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d74dd5b2791da6c888dddc628aefccfb92c0fc3ea5b126b9f55b0ddbef2661`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d0f9fc56b2b7c687a9d162772dee5cfb4895efa2d1c6b2b4cd909db6fdb339`  
		Last Modified: Fri, 02 Oct 2026 18:25:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3487c3422cf43202e402bc4ab0d6a8d859b333951a909e61c588aeb1b07f2c2`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581f8f0396cb184c984b2888bfef9f5f74132ff77f287f622cc1b39c05831fa0`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb077b3219ac1049ae466b8a73f0248f3659c17f82b42427336b465498c8d6`  
		Last Modified: Fri, 02 Oct 2026 18:25:24 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a8c5e1bd4343f0c4b4583e5cff7d55f8b78470af43d14fde24f991b4c7647bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c249cdb82a392eafb91fdb9a0523e8ec8ab5409521c215c19c5f5de0d4822393`

```dockerfile
```

-	Layers:
	-	`sha256:49e94e78a405a63fb58c875a73d2169e8943566551cd1255cdd728757dd7018b`  
		Last Modified: Fri, 02 Oct 2026 18:25:22 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
