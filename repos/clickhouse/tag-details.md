<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.10`](#clickhouse2610)
-	[`clickhouse:26.10-jammy`](#clickhouse2610-jammy)
-	[`clickhouse:26.10.3`](#clickhouse26103)
-	[`clickhouse:26.10.3-jammy`](#clickhouse26103-jammy)
-	[`clickhouse:26.10.3.7`](#clickhouse261037)
-	[`clickhouse:26.10.3.7-jammy`](#clickhouse261037-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.62`](#clickhouse26362)
-	[`clickhouse:26.3.62-jammy`](#clickhouse26362-jammy)
-	[`clickhouse:26.3.62.3`](#clickhouse263623)
-	[`clickhouse:26.3.62.3-jammy`](#clickhouse263623-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.36`](#clickhouse26836)
-	[`clickhouse:26.8.36-jammy`](#clickhouse26836-jammy)
-	[`clickhouse:26.8.36.3`](#clickhouse268363)
-	[`clickhouse:26.8.36.3-jammy`](#clickhouse268363-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.27`](#clickhouse26927)
-	[`clickhouse:26.9.27-jammy`](#clickhouse26927-jammy)
-	[`clickhouse:26.9.27.3`](#clickhouse269273)
-	[`clickhouse:26.9.27.3-jammy`](#clickhouse269273-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.10`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10-jammy`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3-jammy`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7-jammy`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62-jammy`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3-jammy`

```console
$ docker pull clickhouse@sha256:6a1153958766e0792e8d7b3f960818a966d99a967939640a4729687e353afd12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c9cade1afa264fa2645003e165ffa8c4fa6d4f86277e2848f8a902b170300361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267031538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051e4d9968901864c721e4d1eaf152dd371c3f5ee39da65c4d8b801dbfe3b3f2`
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
# Tue, 27 Oct 2026 15:56:46 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:46 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:46 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:46 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:46 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:46 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:27 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae82ccc99d8ee77e6c6fa2619b95944c4130fc7cf12a548faa221db145a67d`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 7.6 MB (7550952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a25ca8d94e1496019d1956e732feb39ce557e0c10a85dffc679be83f012969f`  
		Last Modified: Tue, 27 Oct 2026 15:57:57 GMT  
		Size: 228.9 MB (228858050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3be49fda7b35718c69a1eb70fdd46dc0358b325687ffec3d1e8746a8d12e0cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c5ea2ba762e4fb2f8daae149c6937243236066a71d022ec136b29b2524c141`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefba1c9c9168e769082bbccfca16eba023b3f96e27e4d11738df02b7827e196`  
		Last Modified: Tue, 27 Oct 2026 15:57:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276210f21d4ceda05d20c0cfeadaf5c020ac15ef5736df940da9ce789fe76e03`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea10823ac5111b0a9cb4df7cff28135482122b61e8f466d4f6d97e705b5128`  
		Last Modified: Tue, 27 Oct 2026 15:57:54 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eacffb25fdc8a3154b597ee922079938343a6bbf38b06319c39d6de9d9436e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527999ca339655d695df55b3c1073a02ef4c643fdbef91bcfa0a98f40101ef2c`

```dockerfile
```

-	Layers:
	-	`sha256:ef9ecb8d0a0c0baf7153f7d8b3041d0c7e1555857a438b719dc42c880d7f4fcd`  
		Last Modified: Tue, 27 Oct 2026 15:57:52 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:28d643e4599b893946598fd20fc261ff9e3a741edc5c8c40998c591b54669a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248752893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d917c94c1b3c7da29a5775ac2f71e76606b6188b310ce9ee8faa60bdf791`
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
# Tue, 27 Oct 2026 15:56:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:37 GMT
ARG VERSION=26.3.62.3
# Tue, 27 Oct 2026 15:56:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:10 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52130d260929b0b225e40353108105b95a8abb315afe36475696a14a0e801ff1`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 7.5 MB (7533874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7126c2b74f2be19ae27e3fb2a44c9c367cc14d3cd977baace79c7b594be85a5`  
		Last Modified: Tue, 27 Oct 2026 15:57:36 GMT  
		Size: 212.7 MB (212664363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ab9a0889b8f1b8250616c29ba8df16f84b9af5a4854c90e98c4ef3120ee941`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020796168c9c2cc035031e46fe7ddb749555feba57760d7e42ebb0a6a22e3609`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c577dbf8eaa04b2fc65b7f92561b163b1700e3bead83bc66527074eb8f5252cc`  
		Last Modified: Tue, 27 Oct 2026 15:57:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a12a983d695c83d7eb0635f4f3adb1b318c22dd9613d372591f6f02b04a12b2`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe84a70eb39b8d4542ac71f5c1f5c4ee40f8dd8f9f1459e502acd93cb60d48`  
		Last Modified: Tue, 27 Oct 2026 15:57:34 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5b0b97b3c060fb2bacb472d026507276f2d7fdfeff7290ea85bd85a5485c0030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f37d71f2083d3e48ac315e0af37497fd12feab8eecb338e07688128faa658a`

```dockerfile
```

-	Layers:
	-	`sha256:4537da6cf8c76ff9b9d8da4c02a60e2f29c20e2ed731858518a110d1d5870986`  
		Last Modified: Tue, 27 Oct 2026 15:57:32 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36-jammy`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3-jammy`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27-jammy`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3-jammy`

```console
$ docker pull clickhouse@sha256:2490fc44b0d5c1de712240580a5ecd46b2865a2b1f3971caf03f80373a962392
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cee762e4f787cc70a16666a8241c5ed9628d596d284f144c7e78d026b135c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295325816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a05e39d90dc033da452bcaa2e2a5135eda86a2b6da65f8c34f74dea398782b`
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
# Tue, 27 Oct 2026 15:56:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:08 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:56:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:42 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:42 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515850c83c83667079dc465aab1949b418025e774761354de1ecbac832c38a19`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.6 MB (7550978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764878700181048c8ed35468940752d0a90ca9b047bf13f76f914363cc05a12b`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 257.2 MB (257152039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46abff49d5b4c9cf325898bbd0a1cbb2a139d8e1a2cd760dd84cffeb615e1bc3`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe88654a37a5952f6294f59e2f7652746b9c260e65cc6c8bc49cffbf6fbcfab`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7050cdfd4db8e9f0f15e10d0173d985f88baeab269d0dbff73e70e62efeff3`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afecb8ba982b7be2532c3090804b9a1c7a6f30878e811e99d92350dc6344000d`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704c7fd518a90329e792b4ea126946cd69e3a49239cfc8fd95f8aa874688f023`  
		Last Modified: Tue, 27 Oct 2026 15:57:10 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1a371d5b54d1eaf4a3bbcce5ad341cd08acf741b1278ad4c237cdbfd949b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954276142086a3ebe588dbdf75c1cbe05dbdcd727dcb32b3d77d229460f3e2cc`

```dockerfile
```

-	Layers:
	-	`sha256:8331ccbdc7f7c41c440154ab8de5573f50ac99e0613a58dd889e8c916afd8741`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.2 KB (27171 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1d0dab7ccf98a74e52c1608e7af538ca0cfb43e72e29feceba57ccd19a1f8e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272633926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b0c76e536e3e4c357422b61ccc7fedddca5449136eb5623c1e51bed903130b`
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
# Tue, 27 Oct 2026 15:55:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:53 GMT
ARG VERSION=26.9.27.3
# Tue, 27 Oct 2026 15:55:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:44 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:44 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c207c375e8ca2267ce620f6835bde7634ceed6d523491581e3e59219b053c`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 7.5 MB (7533867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603841fe568c36d2a09ff502ea761b38b25fb132854019f5a3a6376d4736d1`  
		Last Modified: Tue, 27 Oct 2026 15:57:12 GMT  
		Size: 236.5 MB (236545136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec32e8c50959b12a1bf24e5732be1ed97e05c7baf22d62e934e075e5a9455bc`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f139c00da010f6fe147de529a609607b03839c398ac99e1fd15ee4e71d7273`  
		Last Modified: Tue, 27 Oct 2026 15:57:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bb1f03382e8512bcec2dfa637fe7060fd0d44fe007977fb54f9bf3b302ecdf`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e93ec762bff05f894149c10cc194cdd11bb78c3f5e4573b7ce28625ad22186b`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee44f6e5b61cf8d1875e0e05878f46f6388305fdfa1bb4a7321f4018d16a8635`  
		Last Modified: Tue, 27 Oct 2026 15:57:09 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8910f102bbda0871f6144c7f314fe03ea4dad9af270fc6471d04a455d7856666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db26b463b0de60df78d13a87a2b127ac4b78aae976eaf32a2de2dc0992ff5b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9865866b20d9eee9d55fb0e2ecdb89b3c6cc7ea35a4f776904b223a81ac5957f`  
		Last Modified: Tue, 27 Oct 2026 15:57:07 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:edba5106ed3377d4648d424108ab559d83cfe52ed8210148632cdbf3baeb962d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:fa8b2ca95877368895716fcb45ea735186592fa431a116f1e03877df6aa09a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307561313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d4eb490c92b5621bc4525afd67e5f53b8b4694d5d4988b14f3b5d448ec2ea0`
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
# Tue, 27 Oct 2026 15:55:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:15 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:54 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:54 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c83a61c8076ed99e4e11f5af1f82df9d6cb0120cf579e8683211615adf6663`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 7.6 MB (7550935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230562b0f44bfd638edbbc26725d42a0a961963f20bf91899adf2ec74a074e36`  
		Last Modified: Tue, 27 Oct 2026 15:56:30 GMT  
		Size: 269.4 MB (269387574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdfd09ca540b26fde47eac702cf4022a51070814a426fad8cf3878c7a0b02`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac8a9ad6f8837d793c2f789490f8b3776284f2fa62af46994387de5b96f8677`  
		Last Modified: Tue, 27 Oct 2026 15:56:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6572da0b4bf6d32107b626851fb0456d406b2bc66f0c7590ce300ee937b51a3b`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bfd5710ac1fb29f7a754372146f4ac37626028628362722f819324c8674294`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760acf449d8c814601e2b94d63963bb2c0f11cca228ce831bfef9e9f75ec3c3d`  
		Last Modified: Tue, 27 Oct 2026 15:56:26 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:11646a3273268ef414c6375feb222e74a2a54babd72f2023e5cd92b586b7ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153bcc25472fcae16c252d7a652afd9b5208190b15b4e475625ddcf05b9ce884`

```dockerfile
```

-	Layers:
	-	`sha256:860d54c4e5479e4fee2a3db15dab00022910bf3f935ca3482ee601ac66bec496`  
		Last Modified: Tue, 27 Oct 2026 15:56:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ef4039e70b9e7a79b5d2df563beec46d5a508f530f5dc9b86c19130804466555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282470815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07491d7c95bcef3470fcbb69d717e7b0892f54a21208569210f8eb7ca37e6e35`
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
# Tue, 27 Oct 2026 15:55:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:10 GMT
ARG VERSION=26.10.3.7
# Tue, 27 Oct 2026 15:55:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:55:50 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:55:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:55:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:55:50 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:55:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:55:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a8d80fa5b132e75bf4086864c6c89202bbe4174db8842f38ed0a5c4fabcd3`  
		Last Modified: Tue, 27 Oct 2026 15:56:16 GMT  
		Size: 7.5 MB (7533893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3725a161e2e1fba0eac70e0ab24b543df68d122f12b6b8105eefc33cf5df1`  
		Last Modified: Tue, 27 Oct 2026 15:56:20 GMT  
		Size: 246.4 MB (246382002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f9d4c680894ad1c9964d25b5de7b83b1bc53a14c156f5ce491dae37fa86ae1`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9005b55cf1d8fab026e93962c32fa8d5fd1170ea2eda1ca7dc285a010d44a09`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8bb5990ff6190f270b0db23d7c219dedc04b04b9915ee3924e7ac38db8448f`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16e06bf346ea70cf810d69d6b2faab6a3620603f12cb611fb9e086388856870`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c174c2c71030c4bb045055a11b2bb080d2aedcfe0ae7a951b2835803626d5d`  
		Last Modified: Tue, 27 Oct 2026 15:56:17 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c3d05440cd80ad3bc8c8a8cc5085b18cd9f2798fed8b1bfb16f3034bc43f6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf555098ef63994bfa5f7d787d938089625bf1881cb3948a5ca164e6cd4d24`

```dockerfile
```

-	Layers:
	-	`sha256:c90cb0a2ee243799bf338ed78c3287aca6cddedd09d7a36f1628b007794acada`  
		Last Modified: Tue, 27 Oct 2026 15:56:15 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:1201467edf24c3a40c5670aceaece9b51479fbd65e8aeea22e246d5816a322ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55291d9993daee5b2a95d2555e8b31559741cef857672a54c122ee6ce836b0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279853966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56245403d6220de98766018d49d75838c0e2872b3c4298e951e0267171e6a9c`
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
# Tue, 27 Oct 2026 15:56:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:56:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:56:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:56:18 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:56:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:57:00 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:57:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:57:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:57:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:57:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f34bce30d32eaa2b9974d51a57859847c469d907eca2d6e52fd41ec5ab57c4`  
		Last Modified: Tue, 27 Oct 2026 15:57:27 GMT  
		Size: 7.6 MB (7550944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f28cce484efa74363040d1d2827f5806f35fbde1f3fd4c12d8cd9238380946f`  
		Last Modified: Tue, 27 Oct 2026 15:57:31 GMT  
		Size: 241.7 MB (241680485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dd60bd42b404a63ebfb35c5d39a00cf5125dae09d83f8c993c974dac226ad6`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d604ca1b225ef86b5a3d557a9dac57799e5a02237b3a78535903e852048b88c`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd3e2c2b477669a01550ae7b2b2cdaa057a3f7ad3d9d8feb3ea5e35a60d2`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1032fde3ab8a191feafc8136dcb06b396de590c19dffa27676aa1b1e3db9864`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe3b8ec00090b522db6ca7de99f27185c229844a90a32cdedabe7b3cf16ec0f`  
		Last Modified: Tue, 27 Oct 2026 15:57:28 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dde61bce7f9c2bfc3225120c2752d3d42138181af922a489913a3bb3df627b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d62dc8fb8d2ed66d4c4c92c781a0c2690b02b5115a565501fcd2ca532e24b`

```dockerfile
```

-	Layers:
	-	`sha256:84260248fb2b70b964267249c464686a5809f39ff6a4109a9324b78d59fa9e77`  
		Last Modified: Tue, 27 Oct 2026 15:57:26 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7df7488403bfa9df145cf58dfea50b686532f34d3399c922e2f5352a3d99d2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262866840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853f9906f3f1d961a16c4def43774bdd0058c2419eb2d5ea3009ffa13aa484ed`
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
# Tue, 27 Oct 2026 15:55:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 27 Oct 2026 15:55:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPO_CHANNEL=stable
# Tue, 27 Oct 2026 15:55:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 27 Oct 2026 15:55:58 GMT
ARG VERSION=26.8.36.3
# Tue, 27 Oct 2026 15:55:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 15:56:31 GMT
ENV TZ=UTC
# Tue, 27 Oct 2026 15:56:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 15:56:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 27 Oct 2026 15:56:31 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 27 Oct 2026 15:56:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 27 Oct 2026 15:56:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3834aba676d22cf1abf0473e2503cf8d8bc08332fe87eaea0319bb4c46d32a31`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 7.5 MB (7533864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83969532a9a37b681dd469abc64cbf8045f27a2077ef9e4897e61633aaa416a2`  
		Last Modified: Tue, 27 Oct 2026 15:56:57 GMT  
		Size: 226.8 MB (226778318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308b542d6a64ab2bef1b41d148edb4ecd8401c2fd59bfae12d5072e50cd26a6`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720911bb7ffb2a680c3c20c3203d5590dee351a706fadf67fe41fdd408188986`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b38216004b9c2a33ae149d57c31b60eee997c16f9a699562112cd8590eac77c`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38707d30fbfa6f0c326bbd27955029b83d468ed9ad26c62cf69d240d8a9fcecc`  
		Last Modified: Tue, 27 Oct 2026 15:56:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a3ea4eca5a6a090e7d105a1e5fbadeb5cfda4046cc392e01b3abb457ffab95`  
		Last Modified: Tue, 27 Oct 2026 15:56:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:dd42016c0fb6e78c08626e0ef8f77edda017321294357a6a9e5039154fd314f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbd086d7a81d54bf40c91894fc89b955fc11449a988f128a16c3b068bf2ced7`

```dockerfile
```

-	Layers:
	-	`sha256:3595478633b08da48e4373efbe188305362a71ca0aa3cba0ddbf4cac7c38ba13`  
		Last Modified: Tue, 27 Oct 2026 15:56:53 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
