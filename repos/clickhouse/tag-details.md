<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.33`](#clickhouse26333)
-	[`clickhouse:26.3.33-jammy`](#clickhouse26333-jammy)
-	[`clickhouse:26.3.33.24`](#clickhouse2633324)
-	[`clickhouse:26.3.33.24-jammy`](#clickhouse2633324-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.14`](#clickhouse26714)
-	[`clickhouse:26.7.14-jammy`](#clickhouse26714-jammy)
-	[`clickhouse:26.7.14.3`](#clickhouse267143)
-	[`clickhouse:26.7.14.3-jammy`](#clickhouse267143-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.11`](#clickhouse26811)
-	[`clickhouse:26.8.11-jammy`](#clickhouse26811-jammy)
-	[`clickhouse:26.8.11.7`](#clickhouse268117)
-	[`clickhouse:26.8.11.7-jammy`](#clickhouse268117-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.2`](#clickhouse2692)
-	[`clickhouse:26.9.2-jammy`](#clickhouse2692-jammy)
-	[`clickhouse:26.9.2.8`](#clickhouse26928)
-	[`clickhouse:26.9.2.8-jammy`](#clickhouse26928-jammy)
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

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.14`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.14` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.14` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.14-jammy`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.14-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.14-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.14.3`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.14.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.14.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.14.3-jammy`

```console
$ docker pull clickhouse@sha256:c6a98fad4eb7ec0775db5eb82a615535c90480057e5f05c901e3578141c2d2d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.14.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d12f2bd1926d74f275b5f9575d48f0636b1caa9ac986a8581a01f211b3783897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267066683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a191933508e5d6425e74c16aa6f813c8b078a91f5d26a5174364348dad69a4`
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
# Fri, 25 Sep 2026 20:50:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:50:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:50:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:50:08 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:50:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:35 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b8d7c806332027086a4d355c8530e4630186c3a862477f5f2350bbc334513`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 7.6 MB (7554122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83662a2c5319cf0f0d47d234194eb41373fe20842a9a441ba19fbe0e49e6e37c`  
		Last Modified: Fri, 25 Sep 2026 20:51:07 GMT  
		Size: 228.9 MB (228892258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47847e25786c697cf697f4ae027332de4b2976c43eb22ce2ac2701480295f5a4`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7854799c8d05ddc91c9b74f72284a2348b2d8914fad2f1a5f7f2bc79831338`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc914fdaaa7e1a3d726140d6efdd3b9e6b8e132ebf0a104f2d41ad867f88e1`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fea073096a5d8abd44927cbd43d40281c9748ecbb36292c8f5172d5af7c9ec`  
		Last Modified: Fri, 25 Sep 2026 20:51:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826400d2c4bf2424a0f45eadf7b7a872c0e07b9df645ea069758e9b09cdb7230`  
		Last Modified: Fri, 25 Sep 2026 20:51:03 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:440077f22b65b65161a5d931450a1663e89090cc9dba15be076c39fae58f3091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0747fe0900d4c1d4ee73bea12ec41fdda607e6c5cdddf81a9459649461b65181`

```dockerfile
```

-	Layers:
	-	`sha256:d0d95ae98331587b5f8db7010d1885a9de69f2520157f5a3c60fe54486456805`  
		Last Modified: Fri, 25 Sep 2026 20:51:01 GMT  
		Size: 26.7 KB (26738 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.14.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fc5c8f7a11d81526326a220d67dc037ddea87100572dac50471b999f413fae61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250429638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63ffe3a03e6f83ede84aaae1d3aad38560e1560c9a20df1c2dfacc45c525f5`
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
# Fri, 25 Sep 2026 20:49:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:48 GMT
ARG VERSION=26.7.14.3
# Fri, 25 Sep 2026 20:49:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:21 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.14.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:22 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a881ea7410eb8c1db470eeb1564fcb97fc4a255476c5c889bf4023d1fbadd17`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c213699123e7d8e474c01fdd550e27e8d0fb5f34296043c0a2e878b2143fd204`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 214.3 MB (214342642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a59712bdaf1309bb0a93ff309c305847af7e8c8180ccc0b3db1fdce844ee06`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645648dfd854efc38d78b565a7dd386a8cfb5d3adb7c21d9bccf528378951b34`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739ca452b12012fc68c70046c3aa83eda604c2dcc7e31473bc23fdb15c9b6f9b`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc50e26076b597f7d279102bc150bdfee54f918e97f01d02317bca308903044`  
		Last Modified: Fri, 25 Sep 2026 20:50:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b12b9f0b068180317d0bdc941dceea9a9710afbea85c46f3a00e407b089756`  
		Last Modified: Fri, 25 Sep 2026 20:50:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.14.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e03d48b5ff426e809fc3e3d5662b3693c965ad88a03dc48eedde37b2a8b3cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e714d1d75087e1ad2363fcd30753fadc56b5145df50f19d24f63c4588f8794`

```dockerfile
```

-	Layers:
	-	`sha256:4b955b1fd52e370683ebb53e7eec99a6cfedbd3e1fe4e980f43c17094bdffcf2`  
		Last Modified: Fri, 25 Sep 2026 20:50:43 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.11`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.11` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.11` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.11-jammy`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.11-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.11-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.11.7`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.11.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.11.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.11.7-jammy`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.11.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.11.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.11.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.2`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.2-jammy`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.2.8`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.2.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.2.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.2.8-jammy`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.2.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.2.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.2.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:ea80676fae1f7aa1ffa2a014f1b888f763f2b4033779eb9a672c3e5b886ddc61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:be0b7a90192a6c03be52da37fdf0da4efec3764f7a281ca5c6f94c6b426771cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294054746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776d29ab3ec0ef7ab2882201d4e32958724dfcce83563712f568b1faf94d7567`
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
# Fri, 25 Sep 2026 20:48:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:49 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:16 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bdaf74ac982137424e43ead0b2c3ea6cf15bb84c785e2c4a7cd42ccd0a6526`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 7.6 MB (7554064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65977946955a91abcdcaaf2f35a3270779df691753833a0fcb1d966aa3e55f93`  
		Last Modified: Fri, 25 Sep 2026 20:49:52 GMT  
		Size: 255.9 MB (255880115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365a24478cb50ad35d2be39524d45ced34cfe54b646ab96bac3c6a4d1b8fa841`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e95a27fec9877ad67e63b44ab92455c8aeafe0c3e66d6f834a8581746a22979`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e406006f52f30846c20b73a7d5145e0bcae0441609f8bea2516fc17f21115`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeecbd841995a918cbdb1ca3b955781bb4431a0aab9cdcf0abe35066d9e6eb2`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ffc3d3d46cba42dda46a49045312ef58990478cbef31257dcfc17b4134764a`  
		Last Modified: Fri, 25 Sep 2026 20:49:48 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:71b1405fc644de9fa67820c77cf7ea1abb833c3a61a45b5712e011ebf111d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a27d622468e36b973dd702ce06f2d00c5235cd10a4635660827c9104a6b826`

```dockerfile
```

-	Layers:
	-	`sha256:7810ab318d97495a76a4234a6a84d9a220c6434016c9b5c479ae9c4022a04e14`  
		Last Modified: Fri, 25 Sep 2026 20:49:47 GMT  
		Size: 27.8 KB (27765 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e85c07d88efe2ea70b93026ea134b2bd2b53554889161bd9fd9761a1faee7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271401593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9b9538101c8cfc101b7fcc9d3a43df5e11dde870213c678899d2fc58efb471`
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
# Fri, 25 Sep 2026 20:48:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:48:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:48:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:48:31 GMT
ARG VERSION=26.9.2.8
# Fri, 25 Sep 2026 20:48:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:02 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.2.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f340482a051e01a8bdd6a96ef5b11bbe174f8410089c7948e579dab321980da8`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 7.5 MB (7534153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b608d46eb7446b2ae79880d42973f72a13e90fb3891c1ff21f2e71b419192`  
		Last Modified: Fri, 25 Sep 2026 20:49:30 GMT  
		Size: 235.3 MB (235314379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88b898e4ffda87d02a50ffb9641a9edddaf5619f127a5118e7662d0f0b3fa4`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17bf912bd6d07b338f2ef6edf9a4458e363e1fda7592dad5aca6b1bb936d51`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b05fc5cecd14a524af7c27b297f91e378c11361ef76061f4d918ce7bf07c01`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e221e78a1d47ab9fc27f111ff3de06b3b1b908edc7de57ec6ab11e6e4f17c97`  
		Last Modified: Fri, 25 Sep 2026 20:49:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf41273acfb99c02a918d3b94d30ccb7f4d307f78de9a61c6e86ea051b54289`  
		Last Modified: Fri, 25 Sep 2026 20:49:27 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bac9652e2b33d9f25f504b3bcbe58681e7012a3ff97d84a458d1b153cf28932d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef113cd0123ebed4ed65d9b9bb0f62a7532cf6448194e93f160b62d0bb70e64`

```dockerfile
```

-	Layers:
	-	`sha256:aa5508c904dded9e7d32e92cb70b307b8075678bae4fdbef2cdd7b3e5dcd5ed1`  
		Last Modified: Fri, 25 Sep 2026 20:49:25 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:562c7a17cac49632a19b0b529738c021fcf6bc75144f105fbfaed3d89208229e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8683891ae6658028fd41075efbcca4c5bf5c752f8142f3e9e2a561c76830ca87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278208787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc51afa4b5053ba4f118ceaea47b034e4d6485386c2acc80a1b08bb6aa9e0f9e`
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
# Fri, 25 Sep 2026 20:49:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:51 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:50:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:50:23 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:50:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:50:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:50:23 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:50:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:50:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8af0e700952e125c3d58e5cb68133ade419302fd46c16c71646c64c679997`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 7.6 MB (7553933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a002e7408b3dfe9b6db6ab658b4faf10b1e42437ed0b6edb274b64af4fa586b`  
		Last Modified: Fri, 25 Sep 2026 20:50:53 GMT  
		Size: 240.0 MB (240034549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd426fca18c22fcffc3d2c2450f86a7846c1b9175b00d520089c4f44e1a5e01`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d98532f9aa9dc3a77b50e780936d344aa16542359dbfa808170a8475538db2`  
		Last Modified: Fri, 25 Sep 2026 20:50:49 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c3ceabdd3c74a43319fb8d24a239bd827f69232ac00ef1daf99c92e5efd21a`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a1306cba16382addd540382354d7d8ee583c75a3eaab33c405fa59f45fa765`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9ad9cdb222a9865b3edb5b590dc1d8cfd70f637f4c33d4949d89682eaefbe2`  
		Last Modified: Fri, 25 Sep 2026 20:50:50 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:56d95fa62bfd491d3769d5b66c5164f07a3bcfe3c03a84b6538a6a2b25958830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94c7745da9981396dd7dedb64d7e0523d5167da72b9303ee1842118abf15434`

```dockerfile
```

-	Layers:
	-	`sha256:6dbe0e63bf4735548d5c8de0226662b937db839e4c7770c5b4d05c194fb091f9`  
		Last Modified: Fri, 25 Sep 2026 20:50:48 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4699dbcca24bf26b0901388e6e344046c7a8ecf0ae960134801e788c565c7641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261371594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f27431644c799ab6c89f8833198d5c560d289c7cb82d242b9561e3f9c92f2`
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
# Fri, 25 Sep 2026 20:49:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 25 Sep 2026 20:49:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPO_CHANNEL=stable
# Fri, 25 Sep 2026 20:49:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 25 Sep 2026 20:49:24 GMT
ARG VERSION=26.8.11.7
# Fri, 25 Sep 2026 20:49:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
ENV LANG=en_US.UTF-8
# Fri, 25 Sep 2026 20:49:56 GMT
ENV TZ=UTC
# Fri, 25 Sep 2026 20:49:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.11.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 25 Sep 2026 20:49:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 25 Sep 2026 20:49:56 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 25 Sep 2026 20:49:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 25 Sep 2026 20:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928a345db2fe4b30c44c56afa679324458c063c6e2ed3fb27e0a9f22e615b38`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 7.5 MB (7534197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda3f5614f9f26a43754c60d2c6f73301ef0b422fb57a966a326f5c9bbaa7f1`  
		Last Modified: Fri, 25 Sep 2026 20:50:24 GMT  
		Size: 225.3 MB (225284596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48e195f86428586f1bee126a1327158e52a2ad42d88398cc6eff4d68dc5dc43`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22fb2e36093497bdbbd30dd111bfbc7c26c1fd7d0018fb4a7a135d81353f64`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181ce3aa77030b0c0244ab76e398bab7e140eeca2b2c9083d0197fee70d21c05`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ddb2187596e9fb8903dfa5d973e14cc44764a8a41b8ec9986ae82127ee989`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ca90d99a5e18e71ac902e2298a6fb7fb4742b7765940b19f2b8b4ccb80179`  
		Last Modified: Fri, 25 Sep 2026 20:50:20 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8a151ad2b95ce9dd36abcbd5fbc547d9631f9b812bb3632f39d6872dd1c0d4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b4a709f8583a4ee2f7747cd066592b49f4346cef4469ec98c659498a9d8382`

```dockerfile
```

-	Layers:
	-	`sha256:7568dac0b0e455d33853245500326bd1e88529a0e612f915991c537abaf4a027`  
		Last Modified: Fri, 25 Sep 2026 20:50:19 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
