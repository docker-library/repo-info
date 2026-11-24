<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.10`](#clickhouse2610)
-	[`clickhouse:26.10-jammy`](#clickhouse2610-jammy)
-	[`clickhouse:26.10.11`](#clickhouse261011)
-	[`clickhouse:26.10.11-jammy`](#clickhouse261011-jammy)
-	[`clickhouse:26.10.11.12`](#clickhouse26101112)
-	[`clickhouse:26.10.11.12-jammy`](#clickhouse26101112-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.69`](#clickhouse26369)
-	[`clickhouse:26.3.69-jammy`](#clickhouse26369-jammy)
-	[`clickhouse:26.3.69.4`](#clickhouse263694)
-	[`clickhouse:26.3.69.4-jammy`](#clickhouse263694-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.44`](#clickhouse26844)
-	[`clickhouse:26.8.44-jammy`](#clickhouse26844-jammy)
-	[`clickhouse:26.8.44.3`](#clickhouse268443)
-	[`clickhouse:26.8.44.3-jammy`](#clickhouse268443-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.36`](#clickhouse26936)
-	[`clickhouse:26.9.36-jammy`](#clickhouse26936-jammy)
-	[`clickhouse:26.9.36.3`](#clickhouse269363)
-	[`clickhouse:26.9.36.3-jammy`](#clickhouse269363-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.10`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10-jammy`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.11`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.11` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.11` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.11-jammy`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.11-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.11-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.11.12`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.11.12` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11.12` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.11.12` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11.12` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.11.12-jammy`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.11.12-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11.12-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.11.12-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.11.12-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.69`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.69` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.69` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.69-jammy`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.69-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.69-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.69.4`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.69.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.69.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.69.4-jammy`

```console
$ docker pull clickhouse@sha256:3626a0b673cc23b7877bf41901c528036dc853a7caa15b012227dc11a53eca7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.69.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2b8eca5b71c8cfab7d9ac9cb4381c9fc521945358ad10bc9a1695291d18bdba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269444316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e4375eb46d22aa6b9361305fed9278b854e07d6125eaeb8e7147928bc9d128`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:04 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:04 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:05 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3f58a794ba8cc2017afd3e3c075c3a9f30191dd5b00f731eb1f90e3389aec1`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 7.5 MB (7549089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e4d975c4e2263fad81d7128d7968f375fd7c8d521dfeffd654a9c4718b444`  
		Last Modified: Mon, 23 Nov 2026 19:36:36 GMT  
		Size: 231.0 MB (230955360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675353f9584d067eab48ee08393b6537f68e7e57e04661f1fcbe47d60fdbd249`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1ada98c2a078590e1cf28c79ae9ac986db06ac507e8d1702b6c46d787b44ee`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 865.8 KB (865753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0920f797ca0366aa264b7eed6e49dffe867cf262ee5666663afc56220bef3b6b`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67384bfb0694acbb13f0fa50464d90ff54221afcfc137c983656c3b521fd4f47`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c899586ad1410e0c37e463f4b5db83b4e51c00599f1abfde871615a64ab1e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cd329f1125c7e709da9bfa3103f906e1e18fbfb585e959ada49e7f0b63b38683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadc43bf9684ea80b2d112f976e5f074ee3488b3e505b2bf7850a1b7f86e5aa9`

```dockerfile
```

-	Layers:
	-	`sha256:08fe9a36984122e0c2f6fe119dff8ba8efb1ceff802938dfe30d69e1b8ecd322`  
		Last Modified: Mon, 23 Nov 2026 19:36:31 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.69.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6ac6a0e48be5f31ce7620fe91075d3ac3fc9e307745d82c3fbfbc692a6190447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251770241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fac5aadd63581a4c8453b1610b37fb5561aa5e9ef05da7d31db722c678305b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:34:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:34:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:34:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:34:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:34:03 GMT
ARG VERSION=26.3.69.4
# Mon, 23 Nov 2026 19:34:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.69.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda89bd1928cba86624d2fae9d9a1286a159cc6b7150983ec6244fbc9a73f554`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 7.5 MB (7532179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221f48184a28cbfc144d71aeff21e9c0d3c1d054eda908359439a8b09a743d5d`  
		Last Modified: Mon, 23 Nov 2026 19:34:58 GMT  
		Size: 215.4 MB (215366612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9422e162b0972cef68d23b6b9ef0a61db7fac785df06de00dd6273c6cfafe1`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0785e8f709efeb808673bcaa9bb49a112315bfcf0054fd6ef391ff1cc2581c6`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef31d7dd7a29ae39ef2ba34100edc9c8d25ce8d0be3ba2bd9f4c573cf87a70d`  
		Last Modified: Mon, 23 Nov 2026 19:34:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550f100b99fd6fa03b7342a871ba161637fb1669af3cb27ea319a80c4b53d15d`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee139a8110b5d3c1bf4409fb76b3cbe4803a7564d27974fc2ce43aa9076e7f3a`  
		Last Modified: Mon, 23 Nov 2026 19:34:56 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.69.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d0fd24a9516a0a667598e2968370e11324d4504e5ea3e3a76eeb4ae8425fb559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d375ddb7ad8a2a45219c2b89b380ac1edeb19e93ee12e5b197de18836d5be75`

```dockerfile
```

-	Layers:
	-	`sha256:ecc165b5d7457fb9796c5786f3b36177258e77dedfc5380ae9961a32bd98f467`  
		Last Modified: Mon, 23 Nov 2026 19:34:54 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.44`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.44` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.44` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.44-jammy`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.44-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.44-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.44.3`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.44.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.44.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.44.3-jammy`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.44.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.44.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.44.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.36`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.36` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.36` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.36-jammy`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.36-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.36-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.36.3`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.36.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.36.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.36.3-jammy`

```console
$ docker pull clickhouse@sha256:d5283a8f2fe4d3fddf8f3ce4dac2031c4fe70f6947dd64117fe41b8b9f9869f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.36.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e2d119ceeeada9ba76bcf4a342f101a2b3948295bf40995bfece8f7ed6d426a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296465938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909fcbb874ed7abbeb66de5fcb50330c82b611f4931da44b24749f500c3d889d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:33 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:35:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:36:06 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:36:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:36:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:36:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:36:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bb18a3d1ce72eed0267f3d30e7d6448dd1048e03bdbbe6f7a16b3e56a4a27b`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160aec153140a1dca3c418f57b40a77d89f48623fe1e87486ced5e3ccf750478`  
		Last Modified: Mon, 23 Nov 2026 19:36:38 GMT  
		Size: 258.0 MB (257976671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e48532eaadb2484d96ea11bec8b8b273e06cf2b38323a845449d3e76d8410e`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2a7aaaa243c8f9796ecff6b8ac8fd7cf08e9956be170b17743369a6c8f463e`  
		Last Modified: Mon, 23 Nov 2026 19:36:33 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16082ed9208db26b68e43fb80b2c122c15b67bf7c96dc331ed6d9a4e07e4cc09`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a698d1eeecf9562797db46f077961769761d3cf3708777a67a70719bbe33cfbc`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262d21413d4da71659669d2911245b2821ffdac8e871568161a035403a3c74c`  
		Last Modified: Mon, 23 Nov 2026 19:36:34 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:60452a740700a99202569cf6c821280728890495594d35246b1f16ff4b0c5a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176f055d1a76f79aa09c4701eba1a426774cdeef4076956a863fa1fc249bbb33`

```dockerfile
```

-	Layers:
	-	`sha256:16b32d8c2ef1ea62dec6ea54321b6f844520c1693b45b9a9f501539adb5cee7d`  
		Last Modified: Mon, 23 Nov 2026 19:36:32 GMT  
		Size: 27.2 KB (27170 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.36.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:efee1ea74864ea40b315f608fb97abf2f194cd7eaa947f686235255f64230f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273116497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfba2f0b4f80826c2fbfc2273d3f9f8e63409706eb4807391daed5351d49fc48`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:04 GMT
ARG VERSION=26.9.36.3
# Mon, 23 Nov 2026 19:33:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:32 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca616e43928286d6d11c95a6c0f721cf062d3415ec549fa036e162de99141c03`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 7.5 MB (7532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfea2f7f634af8578a0a918502182c2ff028345d695a09359e136b539e35e433`  
		Last Modified: Mon, 23 Nov 2026 19:34:00 GMT  
		Size: 236.7 MB (236712587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7d8dd0e6c5e7cf64ef772f6c83bcc0060816338da8c78bfb3454cb3cede0c0`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781a96ebfd149da489cf87a02180ca92db0e57a9c5a0bdf8267b024d82eb4b79`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8bf31febe7a276d72fcae733f1276c0b5b5c5875572bae6fcc9a05057137c3`  
		Last Modified: Mon, 23 Nov 2026 19:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1320b5297af6b0d700a0a27e5a6a815aa33ee793bf8dacef2005b4d8f4dcce6`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b913e8e288a85502947b21d9447095a06886d59aef8ea66bf2fd1c8f5e13f`  
		Last Modified: Mon, 23 Nov 2026 19:33:57 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6f0b98f98834a85df6206b7070613cdb887840cdec5f48e5f7a948e12e575c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ce30b3e3e903b322ef1543a417485a8f8318cbe2ba4a48f71e0bc5640728e`

```dockerfile
```

-	Layers:
	-	`sha256:eda09bb0c6ba83c97cf96e719d2548c714ff4986a755e5bae08f4f8fd230ccb4`  
		Last Modified: Mon, 23 Nov 2026 19:33:55 GMT  
		Size: 27.4 KB (27359 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:e296c01bba7d828858346273f380abab55af1bdcc8e3d20096d8c6c1ec382022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:e44fd8d7bc97943f3fca8758756f956307a691cfe463a4ce20423b4e8b3b9d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d166fad9284e91cd7090c8fb5927bdbee068b1530f653a8aadf2355ecff4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:02 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:34:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:34:33 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:34:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:34:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:34:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:34:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a1fdcc13584a4d47b387534e4b3d4c04c89e8a2bb8dacf891e0f9ae3c56fa1`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 7.5 MB (7549120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a5fd527da67067a0605e15926dec9187ab45d15eb90836194d33388233493`  
		Last Modified: Mon, 23 Nov 2026 19:35:09 GMT  
		Size: 270.5 MB (270499622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc2aa1ab793d9cf430ddc2de95d541e03cc4c83ce39aaa0b0d4fb455077e32`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a31848c0c38f4d092d57540716f19e6703d4eaed2337441f53d980c243616`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae490a45f596c9c8591210f4b68d8a502824d34b1b18de73c07d9183e2f0e81`  
		Last Modified: Mon, 23 Nov 2026 19:35:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ecd432e3201dfd67cfbb5e4b7c3aad618e4ee805a5a4c969b7c1ad83e6b43d`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b2ae850f93d3d1a8ae82f47b50f01d9906f5fda99987be0a0db9c88b2bc69e`  
		Last Modified: Mon, 23 Nov 2026 19:35:05 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a233f47897483e61f39e266550349256c1bac01ee25965675ab71ecef806ab97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037d82d177af6c5c4c1ab4cb00243fb990b81a719aff5a850e376a48094f919f`

```dockerfile
```

-	Layers:
	-	`sha256:5135440655948f64a4b89bbe53f571d724a6e6604d17025f3e26d207de968980`  
		Last Modified: Mon, 23 Nov 2026 19:35:03 GMT  
		Size: 27.8 KB (27816 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6cd95250f34ec02ef04cec45f3acce675f537dd0e9da256765084f23bdb4bfd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283167565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92579f1016a106b62fb440325a9da8ed40a0da22c3c5d52d681c140d9c318507`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:32:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:32:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:32:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:32:35 GMT
ARG VERSION=26.10.11.12
# Mon, 23 Nov 2026 19:32:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:16 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.11.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:17 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1c420dd976f815f748d8e98be971ad0da4f18bd97b25c03f41ae7288deb252`  
		Last Modified: Mon, 23 Nov 2026 19:33:43 GMT  
		Size: 7.5 MB (7532175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e16b41fc7bbc32e131d91bf4322dfa2a740d5f8692ae10e08b22e829a6850`  
		Last Modified: Mon, 23 Nov 2026 19:33:48 GMT  
		Size: 246.8 MB (246763675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56335dd7bba4c2c5bb4521bf37c32e34f52d2625ca8d80f34c38bf2394e7579`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb8678e8c6eb7d5abbe782b78cfe143fcf634e06d5d3d89d60b8263d54e70b`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54019f5c026d1e6363e3aba4be87cf7773cd3873f64f7218916da80620573bab`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac2d042847253470d98b9f3bac52496f1651eb5146a82a819f5a612f3e4e0ed`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf02aad649d6587b620b49d0d15730e8a928f3840fd12d9a92bc5b87e0ad279`  
		Last Modified: Mon, 23 Nov 2026 19:33:44 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8038bed2e5c58db40818f10afc97bbf0c3aa6e26a4e2ede84d91ea9da24dae9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d264db02ecefaf06f4ea6840ad47c5058e3b20a8e2b7da1bed83cded82c85`

```dockerfile
```

-	Layers:
	-	`sha256:b4a433cb83090877078e79c95658839d52e3c43c9d2ad323912650461de2dc82`  
		Last Modified: Mon, 23 Nov 2026 19:33:42 GMT  
		Size: 28.0 KB (28028 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
