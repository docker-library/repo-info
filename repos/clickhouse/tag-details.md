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
-	[`clickhouse:26.6.4`](#clickhouse2664)
-	[`clickhouse:26.6.4-jammy`](#clickhouse2664-jammy)
-	[`clickhouse:26.6.4.55`](#clickhouse266455)
-	[`clickhouse:26.6.4.55-jammy`](#clickhouse266455-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.6`](#clickhouse2676)
-	[`clickhouse:26.7.6-jammy`](#clickhouse2676-jammy)
-	[`clickhouse:26.7.6.57`](#clickhouse267657)
-	[`clickhouse:26.7.6.57-jammy`](#clickhouse267657-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.2`](#clickhouse2682)
-	[`clickhouse:26.8.2-jammy`](#clickhouse2682-jammy)
-	[`clickhouse:26.8.2.7`](#clickhouse26827)
-	[`clickhouse:26.8.2.7-jammy`](#clickhouse26827-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:6d7b6f4e01b341ff07806fd9a204e76938b3f4ee5a77cd101d905367b4cf4bdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:0a166bb91f79503c6725194a78cdb598aa6cbe161152ef369310a4a441a2c551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266586955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ff857c879fc1d0e89b991172c6fd87aed028661782e20cecb20a07cda482c`
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
# Wed, 09 Sep 2026 02:13:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:13:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:13:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:13:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:13:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:13:02 GMT
ARG VERSION=26.3.29.7
# Wed, 09 Sep 2026 02:13:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:35 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9a315593b9c8e024d130b7205b81fbb92d131f5a65c150163a888ef4ff53a9`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 7.6 MB (7554096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97dd710bd3a2c3dc9f7a0af7d4824e5a50278bafac46b615251e658cbcf7c195`  
		Last Modified: Wed, 09 Sep 2026 02:14:06 GMT  
		Size: 228.4 MB (228412556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940a94d6117128722e5f8ac00a4fa38ceb37f52f9f72f556b1fcbf084840993`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3975463fe9f8c56757f648e1902d2180f2a9a3bb48940b0915b5e3f24db8626`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484a04d26552390ccf93ceae47f8793f22bc584f96ea53de72f5d0cca3d6eb4a`  
		Last Modified: Wed, 09 Sep 2026 02:14:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74419e4154b438ca95c44104208edd21a02927fc7ffcc0c12f0c8c7374fe769a`  
		Last Modified: Wed, 09 Sep 2026 02:14:03 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cd268bf406989781d818632e9b5457c3ac25dd822fe785cb57e6292ad083b8`  
		Last Modified: Wed, 09 Sep 2026 02:14:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a37cc5a4cb9818fe0404b365bfc6c57da1c677ee462f18c2786f484c1418b520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5806e5cd9b2b37503906b398a56760921a600b2f1fede5f105cc1d9d3c52c0b3`

```dockerfile
```

-	Layers:
	-	`sha256:1f9862613f6623032d1342f15deafb3719ae5c7b593446893f8eacc82dbdceb5`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:631b2b5101a1eca085615b988881cd4472d933cc0079dba5b9efbe7c0f3bd745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247959725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0766c5457ab5e90a9b4e21da046ca46e61f6f342d1740fbc108e835a0209e7a0`
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
# Wed, 09 Sep 2026 01:17:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:17:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:17:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:17:52 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:17:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:17:52 GMT
ARG VERSION=26.3.29.7
# Wed, 09 Sep 2026 01:17:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:18:32 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:18:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:18:32 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:18:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc5056289a9dabc84f42a926eede2c5669d2b7944ef9f9c49a072da12d1d63`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 7.5 MB (7534081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a12548316f111a5fe991118d8aaac1777afb085ce2772956776c26bff9c9a`  
		Last Modified: Wed, 09 Sep 2026 01:19:12 GMT  
		Size: 211.9 MB (211872847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e7537965dea9b88f7221ecc878bef575c0dc8e54eefd6cb0069d2673dc8d2d`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf19f81be190dc4422492f7a4525b46974c0fc21d171d2689f5e5a317f88c57`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f2f52be0bd7db217a9cbcb1c9bd4090e359538f3e5f15694fac20a7497fff1`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dac7eed8f481c36c9b878214d1a4f4202c05020e0a1761d0915f3ff056aee08`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505a0e6a67fc2e37b9afaba48c1cb331f14fecacf5386b1b51345639e4433167`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:594f1d154c55ce9587b1975b2b57ea2cdf577e7f563009c7539f37adaf9f2bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb45dfac47b6ab0f74acd24dceff2cb33076e6394cdd3cddec324c4d18bb2334`

```dockerfile
```

-	Layers:
	-	`sha256:a4412eeb916cd8dbad80f89c0cc8007da3cfe2d44ed7cb91ec7ff5a4ee9b0101`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:6d7b6f4e01b341ff07806fd9a204e76938b3f4ee5a77cd101d905367b4cf4bdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:0a166bb91f79503c6725194a78cdb598aa6cbe161152ef369310a4a441a2c551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266586955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ff857c879fc1d0e89b991172c6fd87aed028661782e20cecb20a07cda482c`
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
# Wed, 09 Sep 2026 02:13:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:13:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:13:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:13:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:13:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:13:02 GMT
ARG VERSION=26.3.29.7
# Wed, 09 Sep 2026 02:13:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:35 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9a315593b9c8e024d130b7205b81fbb92d131f5a65c150163a888ef4ff53a9`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 7.6 MB (7554096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97dd710bd3a2c3dc9f7a0af7d4824e5a50278bafac46b615251e658cbcf7c195`  
		Last Modified: Wed, 09 Sep 2026 02:14:06 GMT  
		Size: 228.4 MB (228412556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940a94d6117128722e5f8ac00a4fa38ceb37f52f9f72f556b1fcbf084840993`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3975463fe9f8c56757f648e1902d2180f2a9a3bb48940b0915b5e3f24db8626`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484a04d26552390ccf93ceae47f8793f22bc584f96ea53de72f5d0cca3d6eb4a`  
		Last Modified: Wed, 09 Sep 2026 02:14:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74419e4154b438ca95c44104208edd21a02927fc7ffcc0c12f0c8c7374fe769a`  
		Last Modified: Wed, 09 Sep 2026 02:14:03 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cd268bf406989781d818632e9b5457c3ac25dd822fe785cb57e6292ad083b8`  
		Last Modified: Wed, 09 Sep 2026 02:14:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a37cc5a4cb9818fe0404b365bfc6c57da1c677ee462f18c2786f484c1418b520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5806e5cd9b2b37503906b398a56760921a600b2f1fede5f105cc1d9d3c52c0b3`

```dockerfile
```

-	Layers:
	-	`sha256:1f9862613f6623032d1342f15deafb3719ae5c7b593446893f8eacc82dbdceb5`  
		Last Modified: Wed, 09 Sep 2026 02:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:631b2b5101a1eca085615b988881cd4472d933cc0079dba5b9efbe7c0f3bd745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (247959725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0766c5457ab5e90a9b4e21da046ca46e61f6f342d1740fbc108e835a0209e7a0`
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
# Wed, 09 Sep 2026 01:17:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:17:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:17:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:17:52 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:17:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:17:52 GMT
ARG VERSION=26.3.29.7
# Wed, 09 Sep 2026 01:17:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:18:32 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:18:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:18:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:18:32 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:18:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc5056289a9dabc84f42a926eede2c5669d2b7944ef9f9c49a072da12d1d63`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 7.5 MB (7534081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a12548316f111a5fe991118d8aaac1777afb085ce2772956776c26bff9c9a`  
		Last Modified: Wed, 09 Sep 2026 01:19:12 GMT  
		Size: 211.9 MB (211872847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e7537965dea9b88f7221ecc878bef575c0dc8e54eefd6cb0069d2673dc8d2d`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf19f81be190dc4422492f7a4525b46974c0fc21d171d2689f5e5a317f88c57`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f2f52be0bd7db217a9cbcb1c9bd4090e359538f3e5f15694fac20a7497fff1`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dac7eed8f481c36c9b878214d1a4f4202c05020e0a1761d0915f3ff056aee08`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505a0e6a67fc2e37b9afaba48c1cb331f14fecacf5386b1b51345639e4433167`  
		Last Modified: Wed, 09 Sep 2026 01:19:08 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:594f1d154c55ce9587b1975b2b57ea2cdf577e7f563009c7539f37adaf9f2bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb45dfac47b6ab0f74acd24dceff2cb33076e6394cdd3cddec324c4d18bb2334`

```dockerfile
```

-	Layers:
	-	`sha256:a4412eeb916cd8dbad80f89c0cc8007da3cfe2d44ed7cb91ec7ff5a4ee9b0101`  
		Last Modified: Wed, 09 Sep 2026 01:19:07 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.33`

**does not exist** (yet?)

## `clickhouse:26.3.33-jammy`

**does not exist** (yet?)

## `clickhouse:26.3.33.24`

**does not exist** (yet?)

## `clickhouse:26.3.33.24-jammy`

**does not exist** (yet?)

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4-jammy`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4.55`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4.55` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.4.55` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4.55-jammy`

```console
$ docker pull clickhouse@sha256:ed7689fa17cc97533f53b58331a9559369caee6881781148a9d924fc5501d5b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4.55-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c207e66ddece9dd89fa67e8d553e5b86f6a0e8ffad2fad4ad4f506ecd875379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277853519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151510146ffb6480b0dd52e142587bebb84a29a74ed9b0c19ef1ce7227a2eadd`
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
# Wed, 09 Sep 2026 02:12:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:58 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 02:12:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:25 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21efda6a9a531eca0870656e06383eea3695b38b609cc3241b55102e1842766`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 7.6 MB (7554068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6266c52c34c0eb4eeccd624d714f48fefadffc9fd3220be85f89c26495b9b`  
		Last Modified: Wed, 09 Sep 2026 02:13:56 GMT  
		Size: 239.7 MB (239679147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832f1e8ad8fc1a2bf36861ba15630084825791ec4f724c3e3332ca0833045bc6`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56332867ba4b0766d0f7d1643688eabdc0641af224e9239213662da7b15c4b7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ac79287cdd97fb3e3ebd6e0ca18c8ff95b4740f9daaff07f5394db41ffd4c4`  
		Last Modified: Wed, 09 Sep 2026 02:13:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a75a8c67192c50e994058548002747ce50bc9004ab33c8980482e4bad9bad0`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe107c242f84cabfafcf76c5373a437584eef5796dca90aab20f442dad6fecae`  
		Last Modified: Wed, 09 Sep 2026 02:13:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:26993a92c58aae9c8c2824d4a5ca8b53a0f2217e29e6924561be9698c9ab9f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdd7fbc4036dc107aa810127b65b043d4944294a6a9874ff9cfdca9c03c2f4c`

```dockerfile
```

-	Layers:
	-	`sha256:90e615c205ed5efb5cbe900fa801dfff3e1745885110714aa94ce6f811eb25f2`  
		Last Modified: Wed, 09 Sep 2026 02:13:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.4.55-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3d76fc6bc8f778901d36ed955d076ee2bc52c17f251c43cd3abbf8972db95656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258491989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760f34b535d82792ac06d0d9b8289e71c1c56e3a2c22fe797ce208f41bd12482`
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
# Wed, 09 Sep 2026 01:16:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:16:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:16:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:16:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:16:26 GMT
ARG VERSION=26.6.4.55
# Wed, 09 Sep 2026 01:16:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:17:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:17:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:17:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:17:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:17:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:17:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3eb44928ad0b08c6961c3e7edae60c2c042249ccab0c1e8a1948b9163cb6e0`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25ee090c9aa1ee444ea48e3db838debd14b8808e37c749b5e028762897eabd9`  
		Last Modified: Wed, 09 Sep 2026 01:17:46 GMT  
		Size: 222.4 MB (222405146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ecc0496793bcd690593cbe451f1942ba732df4984fb0e8a57988534932e608`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826eca93292c34b9adab69ba9f42eef255ab9e7b11beece0e65e73855b08897`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b506b1b798262a3e7723ba89ea88a1bc1a638069a50291f0b0e3fdea04a8613`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e33bcf3f5e5a81cebccce665974a976cf70464a92943388e9149efab8cb18a`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7ce0b02999b584cf437deb6fc61a0f50984d66856114e244ba09f12b6dc392`  
		Last Modified: Wed, 09 Sep 2026 01:17:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1aa82d3d34ed5928fb648f28295b8b4c43684accd1cb0e7abe019e94127ee3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d2ec67d49f9b9eb4028ef3af2d6e6a20cc6a9b2de181eb074a865f130e20b`

```dockerfile
```

-	Layers:
	-	`sha256:1e91aa4db384b5021b7aee281a7246eb0f24e33c26d27067ac1e75a285cccc76`  
		Last Modified: Wed, 09 Sep 2026 01:17:42 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6-jammy`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6.57`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6.57` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.6.57` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6.57-jammy`

```console
$ docker pull clickhouse@sha256:0f072c5891fa3bf7a9d435c846c447cff95b04cfb9b96d0413121442527ad0c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6.57-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8712988a4c076e1250f9ecbc98ee153380f2e79fbfc2f7ced814510ade350f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266916707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6673d74a7ef5639d37530f548f19ceefc44c7df2d240f6c4c0687506d0fae25`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:13 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62911ac33b1666bf73ec5b1fba85c63d6604c5461f21375b0f9e5edd49ac44`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 7.6 MB (7554066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269bbfe721d23f10e2c3f5238a4349cc89dcc4ff60b2f9de6084fb01d451e645`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 228.7 MB (228742343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313ffcdbb70092bdadc0c1e69dfdd992788c99c44363f9b69a0cc78bdf495d37`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e653ddec3d37160bad042d8396b7aeac78d3396bcdc8a604477be3f1786f8af`  
		Last Modified: Wed, 09 Sep 2026 02:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac0bf70ac7bc57dee86587c5c9621075428b51f651b308bf432e66d117e1d9`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1298f13c01d740eb3a7b1bd7f366644b22beaeef42f14c4a0e2e14fe2a8216`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6fdf76d23aa5d6e160dba1937fd8b498e94048d8850067b8eddb810ad3334bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c87315e586af18c55d211c9ac5a2fd02c3edadc55defb760df1f2ce858c26d`

```dockerfile
```

-	Layers:
	-	`sha256:e1dbc1437aa44584bd597ff3e60184a7bd194e8b5b134a11dd70eeba78461da1`  
		Last Modified: Wed, 09 Sep 2026 02:13:35 GMT  
		Size: 26.7 KB (26734 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.6.57-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4f524706234f8b32df093c239b752b2b1f0f432f133de5a1824871bfdae81609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250273993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a35230af4d90de86a668f5952f28a109fed9e993a97464f89d86288058f764`
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
# Wed, 09 Sep 2026 01:15:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:28 GMT
ARG VERSION=26.7.6.57
# Wed, 09 Sep 2026 01:15:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:16:06 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:16:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:16:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:16:06 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:16:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d63986244a3c11b5f6ed6d078b35174cee74a711a9257a086280402c95ec60`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 7.5 MB (7534177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41702976713a3bc2b5ca22ea4c9f7b47ce839d04b81529c8841121e1999d6f`  
		Last Modified: Wed, 09 Sep 2026 01:16:37 GMT  
		Size: 214.2 MB (214187018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f851b6d30fb4d59506b7ede45588ff52ae1336f31364d65edf745dfdbce497`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d59f5796e619343795ce6146e47e3a95b44b853277fa2d186fe664c13b7d730`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8716952385c9c64613d7b893a9180deffc0024cab4b659f3def954ae540de945`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98dfbb859ba70b66cf79c3f7d09e8b609a0e0739522ff0f8cc3f89e91b8a89`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55265de4db4d3dcf36e8286648a7010ffeaa065ff3fb7086797b373b2924c245`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:707fa3e1242c75f1a3036325be036143e3752c5feea0c6aae10bb4ecc422f217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e40e2f30d1b41c251dbbead923e11ddda9f0f25f7f1cde38f6c228be5d4102`

```dockerfile
```

-	Layers:
	-	`sha256:a340d53c4f572fea26a31bccfa7d1e890879ed0381b275001aeb8c4f56136f1b`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2-jammy`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2.7`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.2.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2.7-jammy`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.2.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:2c0ce0d50655752e01b859cbbaf275f6c8009be7178e48e9113b060cb472bf25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:47684bf035ac8e242ee928f4c92a26439a66379235c9c07b20b02ca0a09f0e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278012416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e98204cc226d1047b1246a916b0215ce6eaf9c711894e05e559cd2ef8aa657`
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
# Wed, 09 Sep 2026 02:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 02:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 02:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 02:12:40 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 02:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:13:14 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 02:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 02:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 02:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 02:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151d8322e059fbedbee7caee60227c640fb43e9909718fae3139df0413f49a0`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 7.6 MB (7554056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437daf644898219f46363a7cfe42b37dc43e9e9c7a81fd8be745cadfa76635c2`  
		Last Modified: Wed, 09 Sep 2026 02:13:45 GMT  
		Size: 239.8 MB (239838063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210a82ff78558771226d4ebc10aeb86f05d82b9a74072b9c3aa4a54f3955715`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c98122f11194d09cce44b0ed195be2cc9fbb71c92551e7ac0cff91f9c41a4`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3364dbebb545819dd3c75dea7ed71c2059da3041c2d54f00ef1d0d3978af19cf`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a904491bc2a330c6134f17b024792b44b0adfe223f81f044e915e57d747de7c`  
		Last Modified: Wed, 09 Sep 2026 02:13:41 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3bf7257b2365c0a05aaa3d6f0c86e7d0c9587ec32995ebf9f71f4071d100`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:87bafe9b608770841ec780fb3c6998c53e1388ea0df55d3182185463a33e65c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5c6cdc5e8449b771fd74537d0222057f9b7c08528ca871d82a3d5933036ce`

```dockerfile
```

-	Layers:
	-	`sha256:2b3acb9eb3f89125b572044da4d62c31a7b81454c3d4651d14469f103ea56cab`  
		Last Modified: Wed, 09 Sep 2026 02:13:40 GMT  
		Size: 27.9 KB (27946 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:325dcabac06e21fd44f090197f0c31871263526cce68abcdc23c4cb350c6e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261209242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2c13e49cc62239513585eb32b06a8b9fa91c6b281324febaaa68a3d71c6a59`
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
# Wed, 09 Sep 2026 01:15:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 09 Sep 2026 01:15:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPO_CHANNEL=stable
# Wed, 09 Sep 2026 01:15:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 09 Sep 2026 01:15:26 GMT
ARG VERSION=26.8.2.7
# Wed, 09 Sep 2026 01:15:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:15:56 GMT
ENV TZ=UTC
# Wed, 09 Sep 2026 01:15:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:15:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 09 Sep 2026 01:15:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 09 Sep 2026 01:15:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 09 Sep 2026 01:15:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d431d8112a7086700b5b83c2e807b07cf146a6bf364ab509770a3e2a1fd65e1`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 7.5 MB (7534030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4d17cbb5e94ba7effbfe405442c8e77860cde4da203e211b33e13cc7b0792`  
		Last Modified: Wed, 09 Sep 2026 01:16:36 GMT  
		Size: 225.1 MB (225122415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bdcd9c22e5c85ae61bce17f437542d311ce9e069fdbd596ff5717f04637587`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993ff6a54b8829c6133744d4d340793699394d6180884014d78fa88a1544e51c`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71da3bca28d9132a1e75518ff6f56b281c385d5468f2906ce83d11c828c65dc`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821ac0db61aa87f626dfc230b7c9ab4797705dea74b2e5c5601da3f2bf7cc3`  
		Last Modified: Wed, 09 Sep 2026 01:16:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1627f2ce189c0180084a25a2ae7d5896b4f2cd447de27d918d7da820b34895`  
		Last Modified: Wed, 09 Sep 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0fc3fe54fc5c55c9257d47b7ac3513f895fd333df212fb9e716824db23a88452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd63a4123b6d159b273397801b3397c96653d6debe5b807f3267bcdb331f6de`

```dockerfile
```

-	Layers:
	-	`sha256:92b76e913019e977cdd5c3fc2f22f5e3f76d5b20e8fdb1cdd2016d0ee33f9129`  
		Last Modified: Wed, 09 Sep 2026 01:16:31 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json
