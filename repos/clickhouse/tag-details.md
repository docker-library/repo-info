<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.33`](#clickhouse26333)
-	[`clickhouse:26.3.33-jammy`](#clickhouse26333-jammy)
-	[`clickhouse:26.3.33.24`](#clickhouse2633324)
-	[`clickhouse:26.3.33.24-jammy`](#clickhouse2633324-jammy)
-	[`clickhouse:26.6`](#clickhouse266)
-	[`clickhouse:26.6-jammy`](#clickhouse266-jammy)
-	[`clickhouse:26.6.8`](#clickhouse2668)
-	[`clickhouse:26.6.8-jammy`](#clickhouse2668-jammy)
-	[`clickhouse:26.6.8.7`](#clickhouse26687)
-	[`clickhouse:26.6.8.7-jammy`](#clickhouse26687-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.10`](#clickhouse26710)
-	[`clickhouse:26.7.10-jammy`](#clickhouse26710-jammy)
-	[`clickhouse:26.7.10.6`](#clickhouse267106)
-	[`clickhouse:26.7.10.6-jammy`](#clickhouse267106-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.6`](#clickhouse2686)
-	[`clickhouse:26.8.6-jammy`](#clickhouse2686-jammy)
-	[`clickhouse:26.8.6.5`](#clickhouse26865)
-	[`clickhouse:26.8.6.5-jammy`](#clickhouse26865-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.33`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.33` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.33` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.33-jammy`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.33-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.33-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.33.24`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.33.24` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33.24` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.33.24` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33.24` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.33.24-jammy`

```console
$ docker pull clickhouse@sha256:c416751548ebd5bc00d16fa9267607916e0b03b1239a347e3f832e8adb955f40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.33.24-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:4551dfb13d13d0214c91a6c2b4fdbfd5e0f9645d08b513f3c81eb84d0f54a44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266635815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f479fb90b86e775832c0b46c03369542b486c90e939ad915556e8168df9b40de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:05:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:05:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:05:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:05:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:05:00 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:05:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:30 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68bd7519afc381fe197235976cfef32367cfe1f2e8f9ce7fe91474a92cd330b`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 7.6 MB (7554225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc5716fedfa157a76a6bd98f3b2d5d7ad61608e5ac092d370ed2895e36d89c1`  
		Last Modified: Fri, 11 Sep 2026 23:06:01 GMT  
		Size: 228.5 MB (228461292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6be823f3b526ee709f28ada6fb074f21047bde57f3724c88a08244b861e004`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ec7a167d70bb34103e571095c241a7602f57c10c6812f65e2eb462d77abeea`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba817fc8cc1f7e2bf8f9124e4573d76f27adc73d0b12aba3f873e7b1d26033c3`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58140f0ce187c19a214b4234bc011924ef27c8eb5e286e414c808f1367be84fa`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e52bbd2cf7a15ebf5d207e8fd127398e3db5937b30b552763d9f5eb6c35cb`  
		Last Modified: Fri, 11 Sep 2026 23:05:57 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33.24-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64f7fb7557bf8c815ecd0e4b0b77f0f0679b86f43e933c261a50294831715d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a91e98965ef5ebefd86772378db723ac46c9b05e85277d04bb2e0340d636fe6`

```dockerfile
```

-	Layers:
	-	`sha256:86369be421ba385551a8bd83c23ed8a56ebcd8976ed63840d032d506bdcf9bfd`  
		Last Modified: Fri, 11 Sep 2026 23:05:56 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.33.24-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3a61e3e4ac6b66f008ace21b28e9ad37a95cafb64184d44d77453844fda65106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247992026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1a669ab3d819482813c1595d1dda578f34b42c2437fab58eefd69dfa8460b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 11 Sep 2026 23:04:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 11 Sep 2026 23:04:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 11 Sep 2026 23:04:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPO_CHANNEL=stable
# Fri, 11 Sep 2026 23:04:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 11 Sep 2026 23:04:35 GMT
ARG VERSION=26.3.33.24
# Fri, 11 Sep 2026 23:04:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 11 Sep 2026 23:05:06 GMT
ENV LANG=en_US.UTF-8
# Fri, 11 Sep 2026 23:05:06 GMT
ENV TZ=UTC
# Fri, 11 Sep 2026 23:05:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.33.24 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 11 Sep 2026 23:05:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 11 Sep 2026 23:05:07 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 11 Sep 2026 23:05:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 11 Sep 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeea3710f2445739b85030d586f9c953ad22b30d638ccfac09a27800feccbad`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 7.5 MB (7534202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3ac0c2c19b792468b423fa7dfd4f33f601ac97ca3a5ad8cdcca361f2b5b5c9`  
		Last Modified: Fri, 11 Sep 2026 23:05:33 GMT  
		Size: 211.9 MB (211905027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a612f55f974ee3527f3c43fbe49684e2cf8232b62ad0b8d462d8688057db20e`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c11661677e3c5ec05c797d566b757830d6a261fe2df4c0e8b84ac301e9d7cf`  
		Last Modified: Fri, 11 Sep 2026 23:05:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3176deff030998c551d60b793814b54dd88403f5726ffb10aea16df49a746670`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0400d0db2769e1086c9453556b880a9b9ac6621ffe15c01e65399408d0a375`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99165e1d3bf74f1217f5b3a9cd0f5c7c9a95077ba25d4b52af5956c9ec5d1ae0`  
		Last Modified: Fri, 11 Sep 2026 23:05:30 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.33.24-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fd15f9f5922f3c223d93cf8c55682a4667fabbd023a95f34c5e6d6bd43808ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb5bbe56ba2449215b806e96ec61a30f77595f497e0475d795699b6ca746fc`

```dockerfile
```

-	Layers:
	-	`sha256:90316c9714d891f8cd125b83b43b7866c6c009ddc1c67a658cc87d27fd4c134c`  
		Last Modified: Fri, 11 Sep 2026 23:05:28 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.8`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.8-jammy`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.8.7`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.8.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.8.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.8.7-jammy`

```console
$ docker pull clickhouse@sha256:805354516cdae9e3a8bef2ecf3cedd27edfbbb98631e936c73aa121ea1e94c46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.8.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:0b3166fb04ea63f25a59ff1c4049add9ea720770ee8b714e3152a9cab316932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278054622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca835fb847fa04bb64bccd6244f0f2e9727f0e1c1cd6f21d7ed6cbf257228ab7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:41 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:41 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:41 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:41 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:41 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:11 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:11 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a3d2c8e60f59c9f709c2706976a9fb97c1f56c14583333647ca5873bca684`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 7.6 MB (7554159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1acba43b34de007b31c7e4370af6adbc8e74b36529fad3f089ccb047467e16`  
		Last Modified: Fri, 18 Sep 2026 18:45:42 GMT  
		Size: 239.9 MB (239880162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523995389f937dfddb0e3f83c289aac71de5a520eb4b4066a3d393988b9ff713`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7493b8d5f45126c4e309204fdaa1fda962e2025c1ae45ac6f41d35af4ed363`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab435d67ffa6cadf96eca7a5245439179caf99cf3dbc86a6d18f6eb343617336`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8efe86dd3f599d03c3bc7ae0c886af21a9701a7122f30b58e2bce12e18fad5`  
		Last Modified: Fri, 18 Sep 2026 18:45:38 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e5f0c3ecee0b61a87f4f3bfbf79da9271cd588ea6b442a9f068c63d80de907`  
		Last Modified: Fri, 18 Sep 2026 18:45:39 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de4842e25e48135920da23588c55e436c19b178d7bf0b0df06c00c3467097aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998129a598712c183accd1fc45c283e4c806d81589b66212add33f4ca5c9509f`

```dockerfile
```

-	Layers:
	-	`sha256:c63d69dcfc66d2b43c78b1d83e0d2337b76c81c93295d4b41ccac7018ac798f0`  
		Last Modified: Fri, 18 Sep 2026 18:45:37 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.8.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:df09981dd95d61d20a7e2439ee4d2760d71501c57f9c6d4759e2c21e1b487029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258707374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b1254a738338820c73f17eb12ec25c270c162d7502c94f2a6eeedebc6109a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:53 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:53 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:53 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:53 GMT
ARG VERSION=26.6.8.7
# Fri, 18 Sep 2026 18:44:53 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:28 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.8.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd971f5994f8687137995ae2bcaf6375359abf7d358a7d4177e7c953280b887`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 7.5 MB (7534196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818f7f358f6ce373990874dc8dcd38f9a8ddb0072eacad4184971bec831435d9`  
		Last Modified: Fri, 18 Sep 2026 18:45:54 GMT  
		Size: 222.6 MB (222620381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c3fda33fb980987a68631bd932c49ba4a4ce19639a3cd7d36216254373d37`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e36e1c55852fff51787413da106e7420e78cac34b6e25a27fc400b363328b`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10612356bbd5f09b1ee88f4920662b935b00c89d80df07a37e6ce929e99d74`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca65cd9da9283eae5289b79aaa2b068d959bc8393ffaa73dc5ee7bdbe0572acb`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0f56e8c87f3ba88533a1f740de4680ca0a633b875dbac877e4b05e549ab1b`  
		Last Modified: Fri, 18 Sep 2026 18:45:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.8.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:81c597073290898071aaa090111db5c7596c30d9caf5c8f2b58ff878c4360667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87a434b434c0f3ddf2f715b9f27b55446a883f07e393c3400b8d0e65ed2431`

```dockerfile
```

-	Layers:
	-	`sha256:1af53a6a096a91c6e6a1edabc5006f7873393cdd50d4dbe3f44c213e28b3b677`  
		Last Modified: Fri, 18 Sep 2026 18:45:50 GMT  
		Size: 26.4 KB (26393 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.10`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.10-jammy`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.10.6`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.10.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.10.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.10.6-jammy`

```console
$ docker pull clickhouse@sha256:3efaf3308026e3d6a9c5473eb551404f7db4d80add79f6c4b0389d8da208c8f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.10.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:b70f70a89f05360997c2d616a28014541fab0bae76061dfb91868a6eda79370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d1bad916243120c3d5b3c6aad72562ce82cc59a889cfa4e6b2e5a1f7391523`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:29 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:58 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd49e2c72a288fad47dad623c9f518d5249fc2426e91bee01ecb0223faa5f3d`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 7.6 MB (7554125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9331d31ca403dd84b0fe211c7b1666358990b90034efb8a20cc86a520812f8b`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 228.9 MB (228891923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf21251bff5c35981a8725faaa5d4a77ecaa4391162c33937c2d5a15bdbbf3`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162f1c0a4e387809f3599808e16c0c3db79d4f9f0ae75a204d970d77bb9a330b`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03272dfe94510c645fadd56ff26966749434696a48abb173810e665cfe8a8028`  
		Last Modified: Fri, 18 Sep 2026 18:45:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c2efc5792ebb5885988de3e487b4413b7974540d5ac438d2d89a66f8a0d3a`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155874dbbd01bef9f410dc11ff017f0e81ab1a2f538791ace587a9cc1f3d1712`  
		Last Modified: Fri, 18 Sep 2026 18:45:23 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c02f670299cf5f7060e84e9b8f04568f7601bf4e3cbcb307ff15fd892c2b8d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c23ebc2cdbd340f9dbe58d8e12627c45ada7d37e3217b4b5efdb3998a50e92`

```dockerfile
```

-	Layers:
	-	`sha256:dab6aec03ef4d3635682004d6523bd64525aaf4ceb975c1d088276b56f8c85f9`  
		Last Modified: Fri, 18 Sep 2026 18:45:21 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.10.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:553245000e2d3934e153a52744dae761b69a4d92986a018a1cb4240f6de85dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250435087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e588c35e0696dba93245a01ffea067fcf75823adba300ca7b9c5c0181a1a55a4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:21 GMT
ARG VERSION=26.7.10.6
# Fri, 18 Sep 2026 18:44:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:45:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:45:05 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:45:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.10.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:45:05 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:45:05 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:45:05 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:45:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4589d47e511a1ba39bb138077bcbcba29021777793163b04bff78ef7a9dfbf09`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 7.5 MB (7534155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc4ae5be86758d052d6846f003c7cf5f6fab9db10997d8d5515fc1a14bd168`  
		Last Modified: Fri, 18 Sep 2026 18:45:32 GMT  
		Size: 214.3 MB (214348131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8329d6d7a609f83942d269043dbd92cc85bef48febc3b46d88318626a5c385c8`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df783d3b05c446e199d83687f4ba9838b307e119560137b4730a3a5583b9ba9a`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11f0db832bcc94c85f15ffd777d70f80ac4be7744f262b622c4af47be8f5d41`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ccd4c268769bfeb4bc4c16913587f7684664dfac2acd08cf2a5b95038d2882`  
		Last Modified: Fri, 18 Sep 2026 18:45:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05e9f124be82cfacc84753976118034e9d0df557eb9713d0955bfabf066d75`  
		Last Modified: Fri, 18 Sep 2026 18:45:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.10.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1a8eaf621bfadd9dd44a6a156844ebe3a9813a241056942f7e01f05a891e5b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a69c416b15541a425dcc047e5ac9447d3708c2a53b0e5c9e0c686b05e39495`

```dockerfile
```

-	Layers:
	-	`sha256:d44d423a0135ac52590e2e21c96e76184626adf57237f1e1d94c924209b29726`  
		Last Modified: Fri, 18 Sep 2026 18:45:27 GMT  
		Size: 26.9 KB (26926 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.6`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.6-jammy`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.6.5`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.6.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.6.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.6.5-jammy`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.6.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.6.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.6.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:4fd75db7ce0c25f23dc4b4afe4abd1c7f5a83fbc7f7cef06a1498129ed04a99f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4cb553ca09d0d403aa25995cf14f079b3aea06406ea1463665fc1f9c185375c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278160107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2383552cb7a965ac242b4f438f7c555c7779dec6e68e0e071db3c8f0388c9c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:43:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:43:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:43:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:43:38 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:43:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:04 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbdcf4d7822fbdd8ca11846adcecdf5418c0f831f7670a14d4f1aa6b70a1405`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 7.6 MB (7554016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37388811043a8cb46d1c9564ae39a1fa248f066a937a1e394c01c5902a6ac08`  
		Last Modified: Fri, 18 Sep 2026 18:44:32 GMT  
		Size: 240.0 MB (239985790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4b46275143ad73dfd7f91f4b245b4826558eb3b7e99c2f9a4de29794ff75c5`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79010fcaf3133069c060394bde859510a372bd6b29b83445b0b58601b95ed3bf`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53923392372b9af72c87603dcf4fd6d0c915a7107177c8aab087abfdc88c1d`  
		Last Modified: Fri, 18 Sep 2026 18:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0148ad44155f1ff64ec083e7f2f0915f97f243faa1c35966d8561941b582b4a6`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ef6813406f0884b0d6d65292672a6c95fd70188bfa915ee0868ec9805fa7b0`  
		Last Modified: Fri, 18 Sep 2026 18:44:29 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04765693d45968c4dcf29068d0505301c9d76da9d6b9b262ed4570254a98dc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97bbff4dbe68682d6ddb70c738b6dce441f63e8e4e3836642c1867d9101c527`

```dockerfile
```

-	Layers:
	-	`sha256:c94fc53e3f19856e9007b10cc3e5da5c9dc6c6f67aae075fba29f881ba08435d`  
		Last Modified: Fri, 18 Sep 2026 18:44:27 GMT  
		Size: 27.9 KB (27945 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a2ad40673711db996f6da46e9c6aca641813ce4c611088cf55dea1373af25a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261353579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d69a1a48cb8b41626acd0efe7195cc0f6e045aa32bd8989ef3a4d5c5a8bf9f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:44:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 18 Sep 2026 18:44:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 18 Sep 2026 18:44:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 18 Sep 2026 18:44:08 GMT
ARG VERSION=26.8.6.5
# Fri, 18 Sep 2026 18:44:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 18 Sep 2026 18:44:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 18 Sep 2026 18:44:38 GMT
ENV TZ=UTC
# Fri, 18 Sep 2026 18:44:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.6.5 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:44:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 18 Sep 2026 18:44:39 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 18 Sep 2026 18:44:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 18 Sep 2026 18:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96920f20899e1a373a25f0ee814b4bfb0a800a81b17145199815fd19c0632634`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 7.5 MB (7534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efe9780d591820db77e614479f8c4b40331474f978b329551e169ac2a9027ff`  
		Last Modified: Fri, 18 Sep 2026 18:45:05 GMT  
		Size: 225.3 MB (225266613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb161aac5e33ac7f00910082d4f29e356b6d9a9527179ab861f0537b50e54645`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ded9333fafaf5c846c4851fe66b5bf4388b1e7837539b1b3784d1782d164fb`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136e9da54f528e24a2e0bf0eaaf657de8c16cd7d95d792d9666904c0aa03f4c`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8baa6d1031bcbeff65a5658d8445788b8e0dad1ff96769125714a9123af9c2e`  
		Last Modified: Fri, 18 Sep 2026 18:45:01 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317e9a68dd19a7c8419e5efc19bccbb23e3cb72104d2ea5504307db52093da90`  
		Last Modified: Fri, 18 Sep 2026 18:45:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:afc546b959ba959f29f6c642ed5361f0735fc50a09d0a379a8d175a63848136d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45815b54fa4918bfaf2497a06f97b6e3a658c398dec0b486de8dc58223f52876`

```dockerfile
```

-	Layers:
	-	`sha256:fc62a96160155120a240479af90a40d0ddaaab13b11016c88b132fe62da1a573`  
		Last Modified: Fri, 18 Sep 2026 18:45:00 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json
