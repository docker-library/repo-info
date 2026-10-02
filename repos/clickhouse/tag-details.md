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
$ docker pull clickhouse@sha256:27ac18c97b7dc7bf0c07cd1d98e6665af15bf9253b04b03fbb6b3eb00fcb45b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:853ea6345abc14d79ed55a8a4bbb75ac2453dd517e3c821a12a4510cb4175aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fc2966a8c60c504713974ae44a33d6283e65c9db777761b56fdce9393a0dde`
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
# Fri, 02 Oct 2026 01:12:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:03 GMT
ARG VERSION=26.3.33.24
# Fri, 02 Oct 2026 01:12:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:30 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede4a4404e1559409f8bb13ae03d03a74dd3bd98f327d85e7308ccdfd312c14b`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623ce9ec91fc706aad985f6229d088352f0a68b51b4f0ada3dc7daf10b72d9d8`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 228.5 MB (228461280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67983ae067aac894f92a5586bbf719e9fb91b19f21ed1fc4198b7c819ccd8aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6858fddd8920cf806e101623556838ae9c3b28fc389cc58396f98593aff6db61`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf46c755a774a5dc2da3df81bb7d3df96d581d7086fd9c6c183b5b9a148c404`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79fd3f20af3aa195a55a89d0ca817cc01e43c4b966a4b162a5c2b4e8035fa87`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0217f5af326f1f2beaf4718c3f89537c3dd79e389d2d276d417d66c41ad8db`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:86517b6f11f8a6c1f6e3b1c3ebe3188b3d0ca2ba269d61c2c0d6cb6d3d122b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638e82a9393f386b6e4fd309b7ee7ad17724c5259733618e5c6cd5aedc1dee5c`

```dockerfile
```

-	Layers:
	-	`sha256:0e98ff5b1ce590a1e6a4f273fed09cbfa5bef50068bb53214e58a1b46c75d0b0`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5787a8ba325dbf026ccd1e1842d6a6778a7b8721a55c4e431c795df08a9bbc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247993357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a369fe1a919005b6d49748c50d72f5efdf9a3fbdc3911ecf8d0451970e7ba9c8`
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
# Fri, 02 Oct 2026 01:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:49 GMT
ARG VERSION=26.3.33.24
# Fri, 02 Oct 2026 01:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be8e95a25cc6f4357abee61dbe9ade00ecf42d7da1fc026f54b7f5750766894`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 7.5 MB (7534183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcbe492a79e8dc0890a013341404585b1b8bacdaabd4cf073b1c41fa9bf56c`  
		Last Modified: Fri, 02 Oct 2026 01:12:51 GMT  
		Size: 211.9 MB (211904986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2496d031466d4aab886ba8294b33940807524d7fec398413c89497329a4b7809`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e28644c5f8cd57fca597c8e7535e8507063bc2033fccfd85f3efb89c32c40e`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55740fc77518eecbfc8e8dfe5b9c99b2c71dc224f310ede8a5772d350f1d22f`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94821e5111512388866de4fde25a0c1a57a8b39071365332deb38b6b7f7a1e8c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dfc76ee7e6e6c267b5a31378eecc1edff260cd3d8ebe1b496c89dbdcfd5d3ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4750f21aea3d61e863628a9f642cfafd40a6c512090fdaf3927c3390a53a3e6b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4e969da0b4df677223498139094a75af29db8bd341460cafa0e72905ea5716`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:27ac18c97b7dc7bf0c07cd1d98e6665af15bf9253b04b03fbb6b3eb00fcb45b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:853ea6345abc14d79ed55a8a4bbb75ac2453dd517e3c821a12a4510cb4175aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266637116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fc2966a8c60c504713974ae44a33d6283e65c9db777761b56fdce9393a0dde`
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
# Fri, 02 Oct 2026 01:12:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:03 GMT
ARG VERSION=26.3.33.24
# Fri, 02 Oct 2026 01:12:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:30 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede4a4404e1559409f8bb13ae03d03a74dd3bd98f327d85e7308ccdfd312c14b`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623ce9ec91fc706aad985f6229d088352f0a68b51b4f0ada3dc7daf10b72d9d8`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 228.5 MB (228461280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67983ae067aac894f92a5586bbf719e9fb91b19f21ed1fc4198b7c819ccd8aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6858fddd8920cf806e101623556838ae9c3b28fc389cc58396f98593aff6db61`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf46c755a774a5dc2da3df81bb7d3df96d581d7086fd9c6c183b5b9a148c404`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79fd3f20af3aa195a55a89d0ca817cc01e43c4b966a4b162a5c2b4e8035fa87`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0217f5af326f1f2beaf4718c3f89537c3dd79e389d2d276d417d66c41ad8db`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:86517b6f11f8a6c1f6e3b1c3ebe3188b3d0ca2ba269d61c2c0d6cb6d3d122b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638e82a9393f386b6e4fd309b7ee7ad17724c5259733618e5c6cd5aedc1dee5c`

```dockerfile
```

-	Layers:
	-	`sha256:0e98ff5b1ce590a1e6a4f273fed09cbfa5bef50068bb53214e58a1b46c75d0b0`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5787a8ba325dbf026ccd1e1842d6a6778a7b8721a55c4e431c795df08a9bbc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247993357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a369fe1a919005b6d49748c50d72f5efdf9a3fbdc3911ecf8d0451970e7ba9c8`
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
# Fri, 02 Oct 2026 01:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:49 GMT
ARG VERSION=26.3.33.24
# Fri, 02 Oct 2026 01:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be8e95a25cc6f4357abee61dbe9ade00ecf42d7da1fc026f54b7f5750766894`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 7.5 MB (7534183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcbe492a79e8dc0890a013341404585b1b8bacdaabd4cf073b1c41fa9bf56c`  
		Last Modified: Fri, 02 Oct 2026 01:12:51 GMT  
		Size: 211.9 MB (211904986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2496d031466d4aab886ba8294b33940807524d7fec398413c89497329a4b7809`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e28644c5f8cd57fca597c8e7535e8507063bc2033fccfd85f3efb89c32c40e`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55740fc77518eecbfc8e8dfe5b9c99b2c71dc224f310ede8a5772d350f1d22f`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94821e5111512388866de4fde25a0c1a57a8b39071365332deb38b6b7f7a1e8c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dfc76ee7e6e6c267b5a31378eecc1edff260cd3d8ebe1b496c89dbdcfd5d3ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4750f21aea3d61e863628a9f642cfafd40a6c512090fdaf3927c3390a53a3e6b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4e969da0b4df677223498139094a75af29db8bd341460cafa0e72905ea5716`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.38`

**does not exist** (yet?)

## `clickhouse:26.3.38-jammy`

**does not exist** (yet?)

## `clickhouse:26.3.38.2`

**does not exist** (yet?)

## `clickhouse:26.3.38.2-jammy`

**does not exist** (yet?)

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:725bcbce056fd404cc4e665d1b02510ba442542806eba0ffe39ab3c80d6ee8d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:4a01ef6e1b979a6f55f62470f3ad408392ed0aceb3041b46d579e2ba0dfc0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267068227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8712ca9cb86257a0971f2cdc06f13f0acfa88b11c469ed8c38b78a62e146e3`
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
# Fri, 02 Oct 2026 01:12:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:00 GMT
ARG VERSION=26.7.14.3
# Fri, 02 Oct 2026 01:12:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:29 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47791ad5cc27eb1efc0e1a50232ec46b2d722d90a9c2736dcb48f3080807d699`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 7.6 MB (7554235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebf922750a0a1060e7625a2d09c53b6dc80009a74695dec257b7b5a3c8e17`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 228.9 MB (228892310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40dacb188601edd6f808bcb8d63eabfd8675971b96ad3c8547016ee5fd4ff18b`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146ad87222933f954afe726ada0c536096005034a8322fd06cc18beae4c64a1b`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5713931fbbd085e11b5e161e177db36bd3d599f54e3dcba193bcf74a1c621384`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2560073528d5a38289011ac7c8602eb8a78027c604a756a5f93c4845dd8bf3`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca9f4873cd12ea75359b4c007b55a69a44a277e4454d3b5edb2c15d98841b49`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2b8ee78a980c6c74ddfc31438dd7266c2f6ab174b64e56daef5384208c97188f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82188741508d475deb65bb5051fa7a6184664a44e43790229c2fb95f37e944a9`

```dockerfile
```

-	Layers:
	-	`sha256:23246b695659e57831873758539df7fe60620c11e902dd1d5347e39677193280`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78ab5ce4e0e0aec3bce5f9ea06ed35a73d8e8797ad76e8224739a5c2027cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250430899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2bfa30c8c3ebbb7f3027c94d4c5f12dbc7a8a88c42809b1757bbe621dcc482`
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
# Fri, 02 Oct 2026 01:11:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:48 GMT
ARG VERSION=26.7.14.3
# Fri, 02 Oct 2026 01:11:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64bef065d73f405e3aa467fca78f7e783308317cd76c175242829545ffaec78`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 7.5 MB (7534135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8901ea9dad14a96179b367df86e18a0019e133ebb592d802ed6f2885906b0b3`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 214.3 MB (214342580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0cbb28ad2a23d2848d79ec2cf0bda03b5cfc1ba03a13146e2820e880a66117`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99209cdfb76965a77cceb76118ed20c7719fe2252c9be00a762237916e959b34`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93602bae2b2c10353ab0a80c83bcce916216c32ffcf9fac44635e39eaa4108db`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd40e8d649a0b0293c8ca04715d1164526b700e1636ef128349c5083f8656a4`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3ab3f16b72de32606d5a7ae12e8a2458da4974a61aaa391f35e5a1a6a239acb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f612eb6927a6b79bce27d2a8cde26f1563ce503c480700b248f8959f85c1402`

```dockerfile
```

-	Layers:
	-	`sha256:0ac50094cd12ad0aab8d923fba64811a42034413b30068f9ab921500f88e0c8e`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:725bcbce056fd404cc4e665d1b02510ba442542806eba0ffe39ab3c80d6ee8d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:4a01ef6e1b979a6f55f62470f3ad408392ed0aceb3041b46d579e2ba0dfc0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267068227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8712ca9cb86257a0971f2cdc06f13f0acfa88b11c469ed8c38b78a62e146e3`
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
# Fri, 02 Oct 2026 01:12:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:00 GMT
ARG VERSION=26.7.14.3
# Fri, 02 Oct 2026 01:12:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:29 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47791ad5cc27eb1efc0e1a50232ec46b2d722d90a9c2736dcb48f3080807d699`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 7.6 MB (7554235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ebf922750a0a1060e7625a2d09c53b6dc80009a74695dec257b7b5a3c8e17`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 228.9 MB (228892310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40dacb188601edd6f808bcb8d63eabfd8675971b96ad3c8547016ee5fd4ff18b`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146ad87222933f954afe726ada0c536096005034a8322fd06cc18beae4c64a1b`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5713931fbbd085e11b5e161e177db36bd3d599f54e3dcba193bcf74a1c621384`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2560073528d5a38289011ac7c8602eb8a78027c604a756a5f93c4845dd8bf3`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca9f4873cd12ea75359b4c007b55a69a44a277e4454d3b5edb2c15d98841b49`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2b8ee78a980c6c74ddfc31438dd7266c2f6ab174b64e56daef5384208c97188f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82188741508d475deb65bb5051fa7a6184664a44e43790229c2fb95f37e944a9`

```dockerfile
```

-	Layers:
	-	`sha256:23246b695659e57831873758539df7fe60620c11e902dd1d5347e39677193280`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78ab5ce4e0e0aec3bce5f9ea06ed35a73d8e8797ad76e8224739a5c2027cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250430899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2bfa30c8c3ebbb7f3027c94d4c5f12dbc7a8a88c42809b1757bbe621dcc482`
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
# Fri, 02 Oct 2026 01:11:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:48 GMT
ARG VERSION=26.7.14.3
# Fri, 02 Oct 2026 01:11:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:22 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64bef065d73f405e3aa467fca78f7e783308317cd76c175242829545ffaec78`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 7.5 MB (7534135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8901ea9dad14a96179b367df86e18a0019e133ebb592d802ed6f2885906b0b3`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 214.3 MB (214342580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0cbb28ad2a23d2848d79ec2cf0bda03b5cfc1ba03a13146e2820e880a66117`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99209cdfb76965a77cceb76118ed20c7719fe2252c9be00a762237916e959b34`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93602bae2b2c10353ab0a80c83bcce916216c32ffcf9fac44635e39eaa4108db`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd40e8d649a0b0293c8ca04715d1164526b700e1636ef128349c5083f8656a4`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3ab3f16b72de32606d5a7ae12e8a2458da4974a61aaa391f35e5a1a6a239acb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f612eb6927a6b79bce27d2a8cde26f1563ce503c480700b248f8959f85c1402`

```dockerfile
```

-	Layers:
	-	`sha256:0ac50094cd12ad0aab8d923fba64811a42034413b30068f9ab921500f88e0c8e`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.19`

**does not exist** (yet?)

## `clickhouse:26.7.19-jammy`

**does not exist** (yet?)

## `clickhouse:26.7.19.5`

**does not exist** (yet?)

## `clickhouse:26.7.19.5-jammy`

**does not exist** (yet?)

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:6d7a6984eea8a39a1c1f6781319ef4c8d5ae05de9486c0bccaec9503f45d83c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c9c74597489b11651cb797ff9a6f7de389d77592714867e378a8b71e62aa2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278210385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2352d1bf70a5459319a4753db0e0676c98c311c1fe3e0b0e6d7cf26d2ec440`
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
# Fri, 02 Oct 2026 01:11:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:57 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:28 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb4d73fbe720d56d6c2b881d041e1fc1df050ae57edf4b79754b22ba8b99fa`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 7.6 MB (7554081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1aa974eaf369cfc270fd0b04b3a618089800be8cc8978928cd33202c1ea055`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 240.0 MB (240034626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805230526e72f92cec39c03787d44c5639d5a9fce2e6ad37d490828a0fa2f847`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11224d775d382e6b4c23b39c97ea0d9d6127e32a1cc5cec1bba11a86ebbf953`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6a530b069494a31bee4f6d0ed4e4c7f6f66cd93a2c4e4c8682ddbd08be39b4`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22caa066f55d8b7b174f0d156dd89a5d3a94825594cb3f5a75d1d14678ac58c9`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf7b24ba104323fa2961d2cdc92b18556fa886ef757259f9db2013991c786aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:999681b366e8dd2c4d21f52a476b1d519fe7ce34c393afe7cd8e3d9fbaba41e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c57b393677a6c26598b96cf46ce83857b4d4eb0a03d1ef3f716d6d29ec30393`

```dockerfile
```

-	Layers:
	-	`sha256:e8874bcf560f6960967e2093f24e07a0a19032af08a00e39b0cbe855b92bc895`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6f5e4eab4a509cda09f04224119d388a4415434785262fb179634c0be6beddfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261372982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a06debf179d3c3324ddf18d8089823d377fd6536c8d46b2750cd76c4042bfa`
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
# Fri, 02 Oct 2026 01:11:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:43 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:23 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224bba65e7c3b6b38255b23efcfbd8bf70fed8dd3a9ab64529c18425b7c97dc9`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 7.5 MB (7534152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca1ad07c7a97b2e192a0ee03fd0996307e53744184a2db98a5dfa464f6eda3a`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 225.3 MB (225284643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1de3c6d2d98bb72c6e57339de20c523dbee0f412abc1aef2a0132602c20afde`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878ae59411387d5b3babf95752e18e09fbf0209160770c4528822ca9fc876aa0`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed13a783f3a5e19ddba09fb59ab041f13d750748e8468b8ec3e734e159ea61d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1210ee3d65ead26c700d98a183f1fdbad4c7d9b971e79ece844ac21fac412d28`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f792eb04c7cb915a776f8ddcdf15dd42fb076a892684f2f04e84b7cc3c7bb625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7cc0bbaff2863a45573a819c269d4b06c50b705b9ce54568065281a1747f32`

```dockerfile
```

-	Layers:
	-	`sha256:3cb15601ca67032ae116d81f782651009c9caf263f54e84d1b44b665d039ba43`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:6d7a6984eea8a39a1c1f6781319ef4c8d5ae05de9486c0bccaec9503f45d83c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c9c74597489b11651cb797ff9a6f7de389d77592714867e378a8b71e62aa2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278210385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2352d1bf70a5459319a4753db0e0676c98c311c1fe3e0b0e6d7cf26d2ec440`
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
# Fri, 02 Oct 2026 01:11:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:57 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:28 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb4d73fbe720d56d6c2b881d041e1fc1df050ae57edf4b79754b22ba8b99fa`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 7.6 MB (7554081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1aa974eaf369cfc270fd0b04b3a618089800be8cc8978928cd33202c1ea055`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 240.0 MB (240034626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805230526e72f92cec39c03787d44c5639d5a9fce2e6ad37d490828a0fa2f847`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11224d775d382e6b4c23b39c97ea0d9d6127e32a1cc5cec1bba11a86ebbf953`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6a530b069494a31bee4f6d0ed4e4c7f6f66cd93a2c4e4c8682ddbd08be39b4`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22caa066f55d8b7b174f0d156dd89a5d3a94825594cb3f5a75d1d14678ac58c9`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf7b24ba104323fa2961d2cdc92b18556fa886ef757259f9db2013991c786aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:999681b366e8dd2c4d21f52a476b1d519fe7ce34c393afe7cd8e3d9fbaba41e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c57b393677a6c26598b96cf46ce83857b4d4eb0a03d1ef3f716d6d29ec30393`

```dockerfile
```

-	Layers:
	-	`sha256:e8874bcf560f6960967e2093f24e07a0a19032af08a00e39b0cbe855b92bc895`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6f5e4eab4a509cda09f04224119d388a4415434785262fb179634c0be6beddfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261372982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a06debf179d3c3324ddf18d8089823d377fd6536c8d46b2750cd76c4042bfa`
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
# Fri, 02 Oct 2026 01:11:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:43 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:23 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224bba65e7c3b6b38255b23efcfbd8bf70fed8dd3a9ab64529c18425b7c97dc9`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 7.5 MB (7534152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca1ad07c7a97b2e192a0ee03fd0996307e53744184a2db98a5dfa464f6eda3a`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 225.3 MB (225284643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1de3c6d2d98bb72c6e57339de20c523dbee0f412abc1aef2a0132602c20afde`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878ae59411387d5b3babf95752e18e09fbf0209160770c4528822ca9fc876aa0`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed13a783f3a5e19ddba09fb59ab041f13d750748e8468b8ec3e734e159ea61d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1210ee3d65ead26c700d98a183f1fdbad4c7d9b971e79ece844ac21fac412d28`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f792eb04c7cb915a776f8ddcdf15dd42fb076a892684f2f04e84b7cc3c7bb625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7cc0bbaff2863a45573a819c269d4b06c50b705b9ce54568065281a1747f32`

```dockerfile
```

-	Layers:
	-	`sha256:3cb15601ca67032ae116d81f782651009c9caf263f54e84d1b44b665d039ba43`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.15`

**does not exist** (yet?)

## `clickhouse:26.8.15-jammy`

**does not exist** (yet?)

## `clickhouse:26.8.15.10`

**does not exist** (yet?)

## `clickhouse:26.8.15.10-jammy`

**does not exist** (yet?)

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:dcfab80ea8d1c6137d2a9d5b9792559cf7fcc4e522343b7ba5d807fa83cbd688
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf3971c05ddb678e9580e556e8078ab1a41ba26552e970945ebe709c7c4ca6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294056151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310cd24c5f0cd929aa777fa055a95420ff0acc77fd7d79765a8a91ee368eb50c`
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
# Fri, 02 Oct 2026 01:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:01 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:35 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6f861ae721fab4f8e0cefd79480611dc5c50dc9bbb0823c379c935464efd`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 7.6 MB (7554082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fd62cec6045d5f49772f290e7e2856fe6802514ba7ca8e109d646c2af5f3f4`  
		Last Modified: Fri, 02 Oct 2026 01:13:11 GMT  
		Size: 255.9 MB (255880128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fdcc86fc54086908b18daa585cd634f68b88f66ff4b8a85a06403e172b7d222`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec942633e872012af3fe729b45d486b8e6df354c24e74e5bbe4e01e306457ce`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 865.7 KB (865745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc141349678539160ae373c9dbdb72c9af3b5f5d0761e35da83fbe9ff2ff4333`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2103bf13e09d1e5c785c66563552d84c9abb64f7d73520ed76ff167821f20e`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c8a3a90a80827cea22eb9ab08b08a6f7c62d89ff43bc7b79517dfe1310791a`  
		Last Modified: Fri, 02 Oct 2026 01:13:08 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:843df034d541dbded57fc037a4d7dbfb044a3c06e6f37465f6dd21c9615a4568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e406f20fe6c2e986b44d5be3ec4c0568d5fde4908fb48446f71461532fa324b`

```dockerfile
```

-	Layers:
	-	`sha256:8bd26895f2d7ae0723cdf19363bef5874ed57c51bbfd0c24995428273b0e42e4`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5229ac616a67c4ad458d1e86c53f663e3baacd2538ccd10a9b866ddb9c7bec43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271403053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e997d2dfda2a74079906074d3bcecc44b821b1b396e72c5dfc9fbb5cb024d3`
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
# Fri, 02 Oct 2026 01:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:42 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e18a10acbc44c318e49cbca5aa44d14e32f586f9c8a5cadef8a0828565bcf`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 7.5 MB (7534154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01b058b1ca42b30a34f528d9114182bb5a9a5ffe61ccb998ec32a2d1f7c0b6f`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 235.3 MB (235314447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062452b31b3887631f52b34ec252b3ca8a8e4875c2bb9ffabceba641c05d6f2c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3143c0deaad4d425fb9105c36b2f25d8b6f77184be85886e26c3ceab74d72711`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b3bebeaa8c2ddf9801d4f2f9884f98e68e7dbb7ae7f7f3c69c05130c6f263`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb87ea034a1577378a86faf3ecbcf1594821b99e32747a70409fd768715d23`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f5d5e5181ec3388c5cb28320b15b1f6102832d5277f7837b21b5fcdc403bc02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c5d7f38ec54a6644dd2df9dd1cbb929d35c3bf5d382ff735fa02b5316cfe8c`

```dockerfile
```

-	Layers:
	-	`sha256:827f122b308fd24b0bfe768ecbf2e9f904a25e94e27ccad06bcb06eb2a06e718`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:dcfab80ea8d1c6137d2a9d5b9792559cf7fcc4e522343b7ba5d807fa83cbd688
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf3971c05ddb678e9580e556e8078ab1a41ba26552e970945ebe709c7c4ca6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294056151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310cd24c5f0cd929aa777fa055a95420ff0acc77fd7d79765a8a91ee368eb50c`
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
# Fri, 02 Oct 2026 01:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:01 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:35 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6f861ae721fab4f8e0cefd79480611dc5c50dc9bbb0823c379c935464efd`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 7.6 MB (7554082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fd62cec6045d5f49772f290e7e2856fe6802514ba7ca8e109d646c2af5f3f4`  
		Last Modified: Fri, 02 Oct 2026 01:13:11 GMT  
		Size: 255.9 MB (255880128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fdcc86fc54086908b18daa585cd634f68b88f66ff4b8a85a06403e172b7d222`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec942633e872012af3fe729b45d486b8e6df354c24e74e5bbe4e01e306457ce`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 865.7 KB (865745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc141349678539160ae373c9dbdb72c9af3b5f5d0761e35da83fbe9ff2ff4333`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2103bf13e09d1e5c785c66563552d84c9abb64f7d73520ed76ff167821f20e`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c8a3a90a80827cea22eb9ab08b08a6f7c62d89ff43bc7b79517dfe1310791a`  
		Last Modified: Fri, 02 Oct 2026 01:13:08 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:843df034d541dbded57fc037a4d7dbfb044a3c06e6f37465f6dd21c9615a4568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e406f20fe6c2e986b44d5be3ec4c0568d5fde4908fb48446f71461532fa324b`

```dockerfile
```

-	Layers:
	-	`sha256:8bd26895f2d7ae0723cdf19363bef5874ed57c51bbfd0c24995428273b0e42e4`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5229ac616a67c4ad458d1e86c53f663e3baacd2538ccd10a9b866ddb9c7bec43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271403053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e997d2dfda2a74079906074d3bcecc44b821b1b396e72c5dfc9fbb5cb024d3`
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
# Fri, 02 Oct 2026 01:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:42 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e18a10acbc44c318e49cbca5aa44d14e32f586f9c8a5cadef8a0828565bcf`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 7.5 MB (7534154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01b058b1ca42b30a34f528d9114182bb5a9a5ffe61ccb998ec32a2d1f7c0b6f`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 235.3 MB (235314447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062452b31b3887631f52b34ec252b3ca8a8e4875c2bb9ffabceba641c05d6f2c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3143c0deaad4d425fb9105c36b2f25d8b6f77184be85886e26c3ceab74d72711`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b3bebeaa8c2ddf9801d4f2f9884f98e68e7dbb7ae7f7f3c69c05130c6f263`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb87ea034a1577378a86faf3ecbcf1594821b99e32747a70409fd768715d23`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f5d5e5181ec3388c5cb28320b15b1f6102832d5277f7837b21b5fcdc403bc02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c5d7f38ec54a6644dd2df9dd1cbb929d35c3bf5d382ff735fa02b5316cfe8c`

```dockerfile
```

-	Layers:
	-	`sha256:827f122b308fd24b0bfe768ecbf2e9f904a25e94e27ccad06bcb06eb2a06e718`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.8`

**does not exist** (yet?)

## `clickhouse:26.9.8-jammy`

**does not exist** (yet?)

## `clickhouse:26.9.8.3`

**does not exist** (yet?)

## `clickhouse:26.9.8.3-jammy`

**does not exist** (yet?)

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:dcfab80ea8d1c6137d2a9d5b9792559cf7fcc4e522343b7ba5d807fa83cbd688
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf3971c05ddb678e9580e556e8078ab1a41ba26552e970945ebe709c7c4ca6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294056151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310cd24c5f0cd929aa777fa055a95420ff0acc77fd7d79765a8a91ee368eb50c`
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
# Fri, 02 Oct 2026 01:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:01 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:35 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6f861ae721fab4f8e0cefd79480611dc5c50dc9bbb0823c379c935464efd`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 7.6 MB (7554082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fd62cec6045d5f49772f290e7e2856fe6802514ba7ca8e109d646c2af5f3f4`  
		Last Modified: Fri, 02 Oct 2026 01:13:11 GMT  
		Size: 255.9 MB (255880128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fdcc86fc54086908b18daa585cd634f68b88f66ff4b8a85a06403e172b7d222`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec942633e872012af3fe729b45d486b8e6df354c24e74e5bbe4e01e306457ce`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 865.7 KB (865745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc141349678539160ae373c9dbdb72c9af3b5f5d0761e35da83fbe9ff2ff4333`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2103bf13e09d1e5c785c66563552d84c9abb64f7d73520ed76ff167821f20e`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c8a3a90a80827cea22eb9ab08b08a6f7c62d89ff43bc7b79517dfe1310791a`  
		Last Modified: Fri, 02 Oct 2026 01:13:08 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:843df034d541dbded57fc037a4d7dbfb044a3c06e6f37465f6dd21c9615a4568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e406f20fe6c2e986b44d5be3ec4c0568d5fde4908fb48446f71461532fa324b`

```dockerfile
```

-	Layers:
	-	`sha256:8bd26895f2d7ae0723cdf19363bef5874ed57c51bbfd0c24995428273b0e42e4`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5229ac616a67c4ad458d1e86c53f663e3baacd2538ccd10a9b866ddb9c7bec43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271403053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e997d2dfda2a74079906074d3bcecc44b821b1b396e72c5dfc9fbb5cb024d3`
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
# Fri, 02 Oct 2026 01:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:42 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e18a10acbc44c318e49cbca5aa44d14e32f586f9c8a5cadef8a0828565bcf`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 7.5 MB (7534154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01b058b1ca42b30a34f528d9114182bb5a9a5ffe61ccb998ec32a2d1f7c0b6f`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 235.3 MB (235314447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062452b31b3887631f52b34ec252b3ca8a8e4875c2bb9ffabceba641c05d6f2c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3143c0deaad4d425fb9105c36b2f25d8b6f77184be85886e26c3ceab74d72711`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b3bebeaa8c2ddf9801d4f2f9884f98e68e7dbb7ae7f7f3c69c05130c6f263`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb87ea034a1577378a86faf3ecbcf1594821b99e32747a70409fd768715d23`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f5d5e5181ec3388c5cb28320b15b1f6102832d5277f7837b21b5fcdc403bc02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c5d7f38ec54a6644dd2df9dd1cbb929d35c3bf5d382ff735fa02b5316cfe8c`

```dockerfile
```

-	Layers:
	-	`sha256:827f122b308fd24b0bfe768ecbf2e9f904a25e94e27ccad06bcb06eb2a06e718`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:dcfab80ea8d1c6137d2a9d5b9792559cf7fcc4e522343b7ba5d807fa83cbd688
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:cf3971c05ddb678e9580e556e8078ab1a41ba26552e970945ebe709c7c4ca6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294056151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310cd24c5f0cd929aa777fa055a95420ff0acc77fd7d79765a8a91ee368eb50c`
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
# Fri, 02 Oct 2026 01:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:12:01 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:35 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069d6f861ae721fab4f8e0cefd79480611dc5c50dc9bbb0823c379c935464efd`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 7.6 MB (7554082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fd62cec6045d5f49772f290e7e2856fe6802514ba7ca8e109d646c2af5f3f4`  
		Last Modified: Fri, 02 Oct 2026 01:13:11 GMT  
		Size: 255.9 MB (255880128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fdcc86fc54086908b18daa585cd634f68b88f66ff4b8a85a06403e172b7d222`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec942633e872012af3fe729b45d486b8e6df354c24e74e5bbe4e01e306457ce`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 865.7 KB (865745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc141349678539160ae373c9dbdb72c9af3b5f5d0761e35da83fbe9ff2ff4333`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2103bf13e09d1e5c785c66563552d84c9abb64f7d73520ed76ff167821f20e`  
		Last Modified: Fri, 02 Oct 2026 01:13:07 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c8a3a90a80827cea22eb9ab08b08a6f7c62d89ff43bc7b79517dfe1310791a`  
		Last Modified: Fri, 02 Oct 2026 01:13:08 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:843df034d541dbded57fc037a4d7dbfb044a3c06e6f37465f6dd21c9615a4568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e406f20fe6c2e986b44d5be3ec4c0568d5fde4908fb48446f71461532fa324b`

```dockerfile
```

-	Layers:
	-	`sha256:8bd26895f2d7ae0723cdf19363bef5874ed57c51bbfd0c24995428273b0e42e4`  
		Last Modified: Fri, 02 Oct 2026 01:13:06 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5229ac616a67c4ad458d1e86c53f663e3baacd2538ccd10a9b866ddb9c7bec43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271403053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e997d2dfda2a74079906074d3bcecc44b821b1b396e72c5dfc9fbb5cb024d3`
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
# Fri, 02 Oct 2026 01:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:42 GMT
ARG VERSION=26.9.2.8
# Fri, 02 Oct 2026 01:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:25 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:25 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e18a10acbc44c318e49cbca5aa44d14e32f586f9c8a5cadef8a0828565bcf`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 7.5 MB (7534154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01b058b1ca42b30a34f528d9114182bb5a9a5ffe61ccb998ec32a2d1f7c0b6f`  
		Last Modified: Fri, 02 Oct 2026 01:12:53 GMT  
		Size: 235.3 MB (235314447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062452b31b3887631f52b34ec252b3ca8a8e4875c2bb9ffabceba641c05d6f2c`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3143c0deaad4d425fb9105c36b2f25d8b6f77184be85886e26c3ceab74d72711`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178fc58d0963a1f577ec3c32ce3a1ff4b69b0587bf0e07ab6ff53cf5d0cb9a63`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745b3bebeaa8c2ddf9801d4f2f9884f98e68e7dbb7ae7f7f3c69c05130c6f263`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb87ea034a1577378a86faf3ecbcf1594821b99e32747a70409fd768715d23`  
		Last Modified: Fri, 02 Oct 2026 01:12:49 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f5d5e5181ec3388c5cb28320b15b1f6102832d5277f7837b21b5fcdc403bc02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c5d7f38ec54a6644dd2df9dd1cbb929d35c3bf5d382ff735fa02b5316cfe8c`

```dockerfile
```

-	Layers:
	-	`sha256:827f122b308fd24b0bfe768ecbf2e9f904a25e94e27ccad06bcb06eb2a06e718`  
		Last Modified: Fri, 02 Oct 2026 01:12:48 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:6d7a6984eea8a39a1c1f6781319ef4c8d5ae05de9486c0bccaec9503f45d83c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c9c74597489b11651cb797ff9a6f7de389d77592714867e378a8b71e62aa2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278210385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2352d1bf70a5459319a4753db0e0676c98c311c1fe3e0b0e6d7cf26d2ec440`
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
# Fri, 02 Oct 2026 01:11:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:57 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:28 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb4d73fbe720d56d6c2b881d041e1fc1df050ae57edf4b79754b22ba8b99fa`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 7.6 MB (7554081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1aa974eaf369cfc270fd0b04b3a618089800be8cc8978928cd33202c1ea055`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 240.0 MB (240034626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805230526e72f92cec39c03787d44c5639d5a9fce2e6ad37d490828a0fa2f847`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11224d775d382e6b4c23b39c97ea0d9d6127e32a1cc5cec1bba11a86ebbf953`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6a530b069494a31bee4f6d0ed4e4c7f6f66cd93a2c4e4c8682ddbd08be39b4`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22caa066f55d8b7b174f0d156dd89a5d3a94825594cb3f5a75d1d14678ac58c9`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf7b24ba104323fa2961d2cdc92b18556fa886ef757259f9db2013991c786aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:999681b366e8dd2c4d21f52a476b1d519fe7ce34c393afe7cd8e3d9fbaba41e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c57b393677a6c26598b96cf46ce83857b4d4eb0a03d1ef3f716d6d29ec30393`

```dockerfile
```

-	Layers:
	-	`sha256:e8874bcf560f6960967e2093f24e07a0a19032af08a00e39b0cbe855b92bc895`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6f5e4eab4a509cda09f04224119d388a4415434785262fb179634c0be6beddfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261372982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a06debf179d3c3324ddf18d8089823d377fd6536c8d46b2750cd76c4042bfa`
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
# Fri, 02 Oct 2026 01:11:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:43 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:23 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224bba65e7c3b6b38255b23efcfbd8bf70fed8dd3a9ab64529c18425b7c97dc9`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 7.5 MB (7534152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca1ad07c7a97b2e192a0ee03fd0996307e53744184a2db98a5dfa464f6eda3a`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 225.3 MB (225284643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1de3c6d2d98bb72c6e57339de20c523dbee0f412abc1aef2a0132602c20afde`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878ae59411387d5b3babf95752e18e09fbf0209160770c4528822ca9fc876aa0`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed13a783f3a5e19ddba09fb59ab041f13d750748e8468b8ec3e734e159ea61d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1210ee3d65ead26c700d98a183f1fdbad4c7d9b971e79ece844ac21fac412d28`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f792eb04c7cb915a776f8ddcdf15dd42fb076a892684f2f04e84b7cc3c7bb625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7cc0bbaff2863a45573a819c269d4b06c50b705b9ce54568065281a1747f32`

```dockerfile
```

-	Layers:
	-	`sha256:3cb15601ca67032ae116d81f782651009c9caf263f54e84d1b44b665d039ba43`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:6d7a6984eea8a39a1c1f6781319ef4c8d5ae05de9486c0bccaec9503f45d83c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c9c74597489b11651cb797ff9a6f7de389d77592714867e378a8b71e62aa2e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278210385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2352d1bf70a5459319a4753db0e0676c98c311c1fe3e0b0e6d7cf26d2ec440`
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
# Fri, 02 Oct 2026 01:11:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:57 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:28 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb4d73fbe720d56d6c2b881d041e1fc1df050ae57edf4b79754b22ba8b99fa`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 7.6 MB (7554081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1aa974eaf369cfc270fd0b04b3a618089800be8cc8978928cd33202c1ea055`  
		Last Modified: Fri, 02 Oct 2026 01:12:58 GMT  
		Size: 240.0 MB (240034626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805230526e72f92cec39c03787d44c5639d5a9fce2e6ad37d490828a0fa2f847`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11224d775d382e6b4c23b39c97ea0d9d6127e32a1cc5cec1bba11a86ebbf953`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6a530b069494a31bee4f6d0ed4e4c7f6f66cd93a2c4e4c8682ddbd08be39b4`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22caa066f55d8b7b174f0d156dd89a5d3a94825594cb3f5a75d1d14678ac58c9`  
		Last Modified: Fri, 02 Oct 2026 01:12:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf7b24ba104323fa2961d2cdc92b18556fa886ef757259f9db2013991c786aa`  
		Last Modified: Fri, 02 Oct 2026 01:12:56 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:999681b366e8dd2c4d21f52a476b1d519fe7ce34c393afe7cd8e3d9fbaba41e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c57b393677a6c26598b96cf46ce83857b4d4eb0a03d1ef3f716d6d29ec30393`

```dockerfile
```

-	Layers:
	-	`sha256:e8874bcf560f6960967e2093f24e07a0a19032af08a00e39b0cbe855b92bc895`  
		Last Modified: Fri, 02 Oct 2026 01:12:54 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6f5e4eab4a509cda09f04224119d388a4415434785262fb179634c0be6beddfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261372982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a06debf179d3c3324ddf18d8089823d377fd6536c8d46b2750cd76c4042bfa`
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
# Fri, 02 Oct 2026 01:11:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 01:11:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 01:11:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 01:11:43 GMT
ARG VERSION=26.8.11.7
# Fri, 02 Oct 2026 01:11:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:23 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 01:12:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 01:12:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 01:12:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 01:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224bba65e7c3b6b38255b23efcfbd8bf70fed8dd3a9ab64529c18425b7c97dc9`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 7.5 MB (7534152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca1ad07c7a97b2e192a0ee03fd0996307e53744184a2db98a5dfa464f6eda3a`  
		Last Modified: Fri, 02 Oct 2026 01:12:52 GMT  
		Size: 225.3 MB (225284643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7c3d5c66ac0e6aa8ebc89c98fad3ed475ae4a5b8c7276be4d4df1356c1c3d`  
		Last Modified: Fri, 02 Oct 2026 01:12:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1de3c6d2d98bb72c6e57339de20c523dbee0f412abc1aef2a0132602c20afde`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878ae59411387d5b3babf95752e18e09fbf0209160770c4528822ca9fc876aa0`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed13a783f3a5e19ddba09fb59ab041f13d750748e8468b8ec3e734e159ea61d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1210ee3d65ead26c700d98a183f1fdbad4c7d9b971e79ece844ac21fac412d28`  
		Last Modified: Fri, 02 Oct 2026 01:12:47 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f792eb04c7cb915a776f8ddcdf15dd42fb076a892684f2f04e84b7cc3c7bb625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7cc0bbaff2863a45573a819c269d4b06c50b705b9ce54568065281a1747f32`

```dockerfile
```

-	Layers:
	-	`sha256:3cb15601ca67032ae116d81f782651009c9caf263f54e84d1b44b665d039ba43`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
