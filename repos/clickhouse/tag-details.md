<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:25.8`](#clickhouse258)
-	[`clickhouse:25.8-jammy`](#clickhouse258-jammy)
-	[`clickhouse:25.8.24`](#clickhouse25824)
-	[`clickhouse:25.8.24-jammy`](#clickhouse25824-jammy)
-	[`clickhouse:25.8.24.21`](#clickhouse2582421)
-	[`clickhouse:25.8.24.21-jammy`](#clickhouse2582421-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.15`](#clickhouse26315)
-	[`clickhouse:26.3.15-jammy`](#clickhouse26315-jammy)
-	[`clickhouse:26.3.15.4`](#clickhouse263154)
-	[`clickhouse:26.3.15.4-jammy`](#clickhouse263154-jammy)
-	[`clickhouse:26.4`](#clickhouse264)
-	[`clickhouse:26.4-jammy`](#clickhouse264-jammy)
-	[`clickhouse:26.4.4`](#clickhouse2644)
-	[`clickhouse:26.4.4-jammy`](#clickhouse2644-jammy)
-	[`clickhouse:26.4.4.38`](#clickhouse264438)
-	[`clickhouse:26.4.4.38-jammy`](#clickhouse264438-jammy)
-	[`clickhouse:26.5`](#clickhouse265)
-	[`clickhouse:26.5-jammy`](#clickhouse265-jammy)
-	[`clickhouse:26.5.3`](#clickhouse2653)
-	[`clickhouse:26.5.3-jammy`](#clickhouse2653-jammy)
-	[`clickhouse:26.5.3.52`](#clickhouse265352)
-	[`clickhouse:26.5.3.52-jammy`](#clickhouse265352-jammy)
-	[`clickhouse:26.6`](#clickhouse266)
-	[`clickhouse:26.6-jammy`](#clickhouse266-jammy)
-	[`clickhouse:26.6.1`](#clickhouse2661)
-	[`clickhouse:26.6.1-jammy`](#clickhouse2661-jammy)
-	[`clickhouse:26.6.1.1193`](#clickhouse26611193)
-	[`clickhouse:26.6.1.1193-jammy`](#clickhouse26611193-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:25.8`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.24`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.24` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.24` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.24-jammy`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.24-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.24-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.24.21`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.24.21` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24.21` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.24.21` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24.21` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.24.21-jammy`

```console
$ docker pull clickhouse@sha256:f2fc5f77677d8a50e945c184e3c6b9043d9e6c3389940fd5acdfbd139523ad9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.24.21-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a3f34110f79c0abc18305d2bdda4136e9a1ec156d7757b88c0a1beeea3b4d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229700913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21721ad47e4d0b974b513ab9c5761df68eab7dd727b8765fffb54ed69800fe38`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:07 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:40 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:40 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ca0af6b73dcded2db8844b4de58a5b70305725fd8b3180af8266b0aeba9a9`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac0c7fe570108b906c928683845ae99a349fbebbf13bf970a0a2481b3a8456b`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 191.5 MB (191536837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03508e7ed5104753bcdf7a7d5eb733b553f2d27db3bd7fb032d9efca4d216283`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98954ef7d41bf62bff6e0d8e45b3ae8023f1e4a59963a86a15577baa3f0f1f96`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e13d33bb00b0d8a53774a54a582f41fb0550cdc8ea278092fa2b37bcbe3605`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4533f655dc50a7b02364f2f68beafa830d4b41fa17efcee6d26798e3765c47c`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24.21-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04f7791bd5f8821ac9ffc82ff6db6bab2c6f2cf98ba3843b3c34530603e8e121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbbfc8674f4e65f5ec16763eec88076b2421f3fab726667d3aad6bb4888bc5`

```dockerfile
```

-	Layers:
	-	`sha256:b4b9bb09db64cb2251ca4e4450a4c95ee1e3fcf0575ec8f4845ee9834c406024`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.24.21-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:69b0b518d2a9688c082ab89698e870b6113a6d5eb40b0aa8d637c9fe78eea8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8f2e04dcc86f3c39d3ead07206feb0931141f49a159b6f074a3dd7a542ea6c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:02 GMT
ARG VERSION=25.8.24.21
# Thu, 02 Jul 2026 02:12:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:32 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.24.21 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:32 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d579e9e01eb8866ad0264f9b01b1ffd0e8236ada01e77d66a6ceb5a46c600`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7d08e6b3b727393a10718a9223cb2e2296f308687e802aa55da7f992331d7`  
		Last Modified: Thu, 02 Jul 2026 02:12:56 GMT  
		Size: 178.7 MB (178706762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e1fb18aa53c15674a039b67511a21b3e526c68485e84a47fa7b57111abbd1`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7033ba243a4c327f49686b99a31698639131905f57a096653616472ec02e5b`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cb033557d3a6b4b36fefd80763823de67c4cfbdefa6e1d83d5a9e938dab6d`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a020fa8bd86aa049126e68ac7168bd2abe750e85320c1a0614f41f3c96990`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15796b3694b62728a6e490afae4f220b8b65ddd2908c1b4a4be98585296486`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.24.21-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:22f4655286d74320c349bb0aa21ecf5300bc443db28af825c9496d32de831a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683a50183fdf4094d4c5cbbae9edb803313f1bc80784b199a2f39afcfc181e5`

```dockerfile
```

-	Layers:
	-	`sha256:f83ef1af893c42c9b931d353f8b0da7a5a78347af463b20175d87eb9386fd525`  
		Last Modified: Thu, 02 Jul 2026 02:12:51 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.15`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.15` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.15` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.15-jammy`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.15-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.15-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.15.4`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.15.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.15.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.15.4-jammy`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.15.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.15.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.15.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4-jammy`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4.4`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4.4-jammy`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4.4.38`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4.4.38` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4.38` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4.4.38` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4.38` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.4.4.38-jammy`

```console
$ docker pull clickhouse@sha256:8be6bc2772baced54a716c97ac3c074727d1f9b0d7e2f3c30b94f25fe96ac83b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.4.4.38-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a651ce563c52adc9a11fc898908b567cf5af21396e91b41f558a4c12aa4b710a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257147333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ed9eebc34cdc0c77a196329a742ad4324ed40a197fa3d41f48a1933268bd58`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:13 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:13 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:13 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:13 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:13 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0d9b925dceeee9aaf964419d67558a765ade3b3136ef0ab22e4918dac9ba9b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 7.6 MB (7555122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e23e821e0e7aa0572fd0e999caa00a119a203a3c6c4ca29b9f0967f526688d`  
		Last Modified: Thu, 02 Jul 2026 02:13:14 GMT  
		Size: 219.0 MB (218983277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119d957ef2681aa7a6bd4e1ae73f8b7f71eff15026be6fe6244e58574cdbf963`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21029cdbf1c0374bc02189043a5fef9db680f386cbeefa47f7bc8d4d73027721`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caed4d2ec74d47ad431f20aac46032fbe22b916bf39179e74bb57daec8e9151`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161c69f4fc2dcd18c316898a318c479b8a2dfb15a8f891432deaeb6ca950b991`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4.38-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d8952ca3d6fc2470d22de0af2c7cfa96391572b123000c58638d8c8733718e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8465fa6a5b2dc30256826237c27c628287500ef7bfa973662ad27c570218c7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d62b149b61743a06f3678ab646b1330cbb173cc4a41748056e59ab2f9f12103b`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.4.4.38-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:b9c056e9280cf088ca9d1e56d4f187d5fee2bfe00f2844ad2b5a5a129e867348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240953216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1432785059d11d2295cd7de24108a9234d820fa8269d089555ca59b0f547cc9e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.4.4.38
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.4.4.38 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53a52b13afd6edc9782c9b71319f7bf2293418f2ce5a871d2b44799c0a97ad`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 7.5 MB (7535427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2466bdbb5afe274d27b7d8c64fa7dc55368a600e9174e05dcee013a0bbc98c7e`  
		Last Modified: Thu, 02 Jul 2026 02:13:12 GMT  
		Size: 204.9 MB (204934556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2411bcd1dc2c5169cd605615c52841bc3b7ada61385bd9c6ee2469ccb6456d4b`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179e3ac5f020cc0dad4b761000f2046ade36f323dad758e0b55f581029f46921`  
		Last Modified: Thu, 02 Jul 2026 02:13:03 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6a401331780156e10fea61b7ab9aa2b8283bcd78774da88ddf01bbbb1e31e`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35849abbaf34830760208b205d40649bfafdca086a6762f8ee8f536fea66de`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e82b7c9c7a29ab13cb68e055a7db00fb57898488616d77a48007852d523479`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.4.4.38-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:405a1e6b5bd943d2631f3a213e74969eb6dc6f35bbeb8f3a85dc70de7d15e116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e06703412fb8ca60d2f676bbff92f217f4a5aef751fc6d3506d4e3f90530b00`

```dockerfile
```

-	Layers:
	-	`sha256:d319ebc89578eaf1d9a801b9a0fd857632225e54217ff09aed0027941e9ab8b3`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.3`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.3-jammy`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.3.52`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.3.52` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3.52` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.3.52` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3.52` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.3.52-jammy`

```console
$ docker pull clickhouse@sha256:3c600c0f777169b05d94a89b98e7670692ecc3e3f75934a287b351956002c413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.3.52-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:94cc279f4340837c2f47f5b01d476a31491d94e04bf368e15dc9d3b4b12d497a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261394437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fced864c52afb585a94df2a0befe8f0e898fbe3d22aafe25d6125f06e537f6fa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:01 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:12:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:25 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:25 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:26 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011e7aa3e851af78f3427331b8c248dbebdba2215043817804baa65f6fd670e`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 7.6 MB (7555173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8651226d2f9e328b6fea3191750b9813d8309ca05cad9e11fc161d093a1c44f`  
		Last Modified: Thu, 02 Jul 2026 02:12:53 GMT  
		Size: 223.2 MB (223230333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73960a693ed4cf8dbf9cda83da2baed0877bb746e4513f20f894ff13e54b34f6`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e54cbfc504c0904685349e97f5f1ad2d7ad22f2830cb98ac927652b5c3d983`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08611bcb69db3f2a908f3c34802494118d9918438a091af81e2a5dfba751e6e4`  
		Last Modified: Thu, 02 Jul 2026 02:12:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9938c459adfe7ef7d49b1d4742cdcf119d6461dc37812e81c0c5ec66f5d2bef7`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fdcee381122bff90458feb6bd21d60edcd15e9743532263ac1cde08cd9fdf2`  
		Last Modified: Thu, 02 Jul 2026 02:12:50 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3.52-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b1990357ece237a33f42251af5792ec29f5862c13b163b3b8572564da33d4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e05861decdd76211915b815250a4436c4326a4afed55bdeab7ff5112876026`

```dockerfile
```

-	Layers:
	-	`sha256:a0b4ce33f415649124b180808651082d5a8ac9117f49cb94816376f6f62f1f09`  
		Last Modified: Thu, 02 Jul 2026 02:12:48 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.3.52-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:99bb5d86780f00253d23430820a4e5fe8a351a7874930376e12ae400232a622e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247207355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4b812b2b4e8c1c8108b03f15b905eca40a071faf3e4aefd4fc62c7f0ee651e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:51 GMT
ARG VERSION=26.5.3.52
# Thu, 02 Jul 2026 02:11:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:37 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.3.52 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:37 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:37 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:37 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6520e2dff4851022f29347dd0a6ad766a67719d856fb439b8936d7b105275`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 7.5 MB (7535390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8ff5a8de4e0919b4af986eb970b7f2616e4a681c979f4f417a549bf40fa90`  
		Last Modified: Thu, 02 Jul 2026 02:13:04 GMT  
		Size: 211.2 MB (211188725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6642dccd0a2f189e24603b19deba06182726fe4d9772c89546048e243e63692e`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bfc975e42c0c91a8d0592d43b2c57d9ee0c757980008479b3febbe0b11d75`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31981b7a522235a1b471e59671e12ca913261926f1ffed257685caab18b1681`  
		Last Modified: Thu, 02 Jul 2026 02:13:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2741aa8d775f6b0959c0e581d8cdeb08ee057b467c0c0c6302ac8fe46dd736`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612d15a2327a3ccc6fb6db567907566b403d99849999cb1c034b2c84986de23e`  
		Last Modified: Thu, 02 Jul 2026 02:13:01 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.3.52-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2741843f581b682c318421bd0afc5a3c2b28898b47df657be5e1483f6c6c5c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d9237fb434934689196f26fdcf924c26a43abd47a818c9ef528a0ff064af7`

```dockerfile
```

-	Layers:
	-	`sha256:24a879dce895034460580ea75d4f24a04b01bd13a0a7ead46b5f4c4c57f61c67`  
		Last Modified: Thu, 02 Jul 2026 02:12:59 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.1`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.1` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.1` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.1-jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.1-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.1-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.1.1193`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.1.1193` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1.1193` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.1.1193` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1.1193` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.1.1193-jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.1.1193-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1.1193-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.1.1193-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.1.1193-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:9f894514d237cdf0d004b78f77af9ea87ae32033f4d5d4efd20074695bc845bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:7495b12b31b9803501426ff9432f055876772278d4199220d553a4b9392d4871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265179197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b9482d26a566b51050e914b248b610e3b5cbffc5eb7b598bfef80f444858cb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:15 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:41 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:42 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5733af9148e4d15af17d072954bcf15e74de49ad7f299de85a5ccb42b5e6d01`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 7.6 MB (7555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd583e021941d18b89c5c7527bec1906ae136d969fb9ba2410c8b619d2fa18be`  
		Last Modified: Thu, 02 Jul 2026 02:13:16 GMT  
		Size: 227.0 MB (227015102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe9b413d57b320be1aff4306ed48a7ada23e28ea6a5909277505e906c1e3b00`  
		Last Modified: Thu, 02 Jul 2026 02:13:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87dd2b8535815f525332df15118016e41b95043abdaa8b4a45a314ebf33c9d36`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3ae0d7d964e507e4ca4aae74b9dec1e7e41a105e2b589e0e7dff688de2a04b`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f64bda1dfbfc3d5ee0aa46992684526fbe57fa9d52bb52da8944e3cc7dad96`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771e3fa1dec2f737ec013011e7a109af41ce41793b50fd0a30f5ac73b170b5e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 3.6 KB (3634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7829223c49f4a31a5a643ef164dbc60367ee0ac27334b307285a118c6268185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bb6d253871dd4377d4760f188f7a3f6eb8a91b504172c2a2f00bdea246192a`

```dockerfile
```

-	Layers:
	-	`sha256:99085ca26d0a184a781b276762c4baf4c605e7d89eb480542a706a542cb92623`  
		Last Modified: Thu, 02 Jul 2026 02:13:08 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:35c3add67d99ab1da11f9a6a939d557d3f786633c8ddf17bcaf7f80521da69fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246618526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c8427b507156c90f6daf677d3c5e3da50e556f094b2a23858ce6650e168a65`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:04 GMT
ARG VERSION=26.3.15.4
# Thu, 02 Jul 2026 02:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.15.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fd9d9799f8c58b0b56b94500336eb13e4a3f86543750ac45d3f3c1910bf741`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 7.5 MB (7535456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d63864d748d54e35ea57e49e1e1ae6911978fe5308d153459f59ba6e9ec99c`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 210.6 MB (210599834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d5ee8f25f677455b3083349d9b22ffafbe2df55a34050a7b72049cecd8905`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d68a35a45a27da60b4efc3993dd8b63124a95dcd31da1767cb26eeb10ee9e13`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b81efed07beceb83f134b877d3e35e95f714b0c6bbd0fcdd42bad1188c33e6`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365b05f87fac1d9fff5e1e1a6b505e1891a9f4468fee1326385514b88559346a`  
		Last Modified: Thu, 02 Jul 2026 02:13:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:97a48142fda831011eb1c8084b5c73f852e626c8ed90c9e357ec28886f7b7c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb0ced57c25c5da83d06f18642e30df7a42e834d3dee8356468ba1f7241207`

```dockerfile
```

-	Layers:
	-	`sha256:fc567ffe1820c5948947ece74314870366c141cfd6c635571e7a8557a6b99de4`  
		Last Modified: Thu, 02 Jul 2026 02:13:05 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json
