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
$ docker pull clickhouse@sha256:978c3abb804cb8aa175d875cf526e0bdb0e686ec91db4e8969928d1b03b18e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:58ae3514cba71bdddae2ec99fb3373ed190592815a88f1d4660e6060f80c4591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229902938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326799664a07df37b61b7f484fcd799d304c9f88372ec96c7c409e07d8d11ea2`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=25.8.28.1
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:31 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:32 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71132fa2458c4cc365db4bc1c86dae68be09db9777ff0cebd84bec0fd1b070c9`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 191.7 MB (191743071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8448bb8f244b68b3d5b49d6b29431f367f931096fad9c4ff18e56f14c93536`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9844f80fefd7e6759561dea574d88c443b3e29bd56727db66c268f703feece`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db3a8d9bc28bf62b9fc667bc52bc9759edcb9295a290eec5b83f438a9889f4`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb120c78eac9e39908a1badd6c64ea0d13160ef0af9a834aaacc15a99fb41ef3`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2731ad46f3b33d0690e979e3fc23a978f293f18c5db64ce40acf674ff0f7fd5e`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a87f25fce16de0748d5012ab551f973630265744a2fa59ed584279e3da6e067b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daeb928af63d09649fafba36d2a3f9d498e1a5679a254744e622348863dda2b8`

```dockerfile
```

-	Layers:
	-	`sha256:fcfe42fcc181dd410f64a92587a3d95b7cdce9de9a88872aad8afde721e26ac2`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1df09fdac5ffd0b30e685c75403a0460c54272bfd3eef15d448355bea555130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214891643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc909a08f01f5cc212f041d7e860f2bd19228685e1f26085b3af7b6f34dcec2`
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
# Tue, 04 Aug 2026 01:17:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:52 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:52 GMT
ARG VERSION=25.8.28.1
# Tue, 04 Aug 2026 01:17:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:22 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:22 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24fdbf4faa7b7d8cfe7cf3c94c51f2603c27a97cd26a7252ab3c26b69935e51`  
		Last Modified: Tue, 04 Aug 2026 01:18:41 GMT  
		Size: 7.5 MB (7533608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343b6d134db9ea687b80b3ef4186888acb2722f230f96e4b9f00a7699126b236`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 178.9 MB (178867976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adeefbfc999b0e6d2ff88a9a91c3bf48f389bb650e238537b5ff84bdccb31437`  
		Last Modified: Tue, 04 Aug 2026 01:18:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858196d7b305648122267a5faaa406cde371fa56b3377f645b19ea91e289bd62`  
		Last Modified: Tue, 04 Aug 2026 01:18:41 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f8a13e6adb7db42ce9d7c469d30b605ebcc64efa0367894c4281963f4c02ba`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a7776d830d24f8337bed36d019c946a450fd3ce2fc3f159be5a3de3ec8d3bc`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6affb7a5f302f7733f742f46de63fed50bc20d2ed3beda5cefe8eedc9b625613`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b8a6c16046974048c695d08d94d43b68cb2b59752f641f0da3032c2d7829b8b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6e37c14a8b4b7f54dedccce71f08a54525c20bf126abc04bbdbed4462135d7`

```dockerfile
```

-	Layers:
	-	`sha256:f00ea5f518a747db4b1a02c95c612c4f96f1ad89bf8e0ac408f27eea16abd268`  
		Last Modified: Tue, 04 Aug 2026 01:18:40 GMT  
		Size: 26.4 KB (26410 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:978c3abb804cb8aa175d875cf526e0bdb0e686ec91db4e8969928d1b03b18e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:58ae3514cba71bdddae2ec99fb3373ed190592815a88f1d4660e6060f80c4591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229902938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326799664a07df37b61b7f484fcd799d304c9f88372ec96c7c409e07d8d11ea2`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=25.8.28.1
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:31 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:32 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:32 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:32 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71132fa2458c4cc365db4bc1c86dae68be09db9777ff0cebd84bec0fd1b070c9`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 191.7 MB (191743071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8448bb8f244b68b3d5b49d6b29431f367f931096fad9c4ff18e56f14c93536`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9844f80fefd7e6759561dea574d88c443b3e29bd56727db66c268f703feece`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db3a8d9bc28bf62b9fc667bc52bc9759edcb9295a290eec5b83f438a9889f4`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb120c78eac9e39908a1badd6c64ea0d13160ef0af9a834aaacc15a99fb41ef3`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2731ad46f3b33d0690e979e3fc23a978f293f18c5db64ce40acf674ff0f7fd5e`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a87f25fce16de0748d5012ab551f973630265744a2fa59ed584279e3da6e067b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daeb928af63d09649fafba36d2a3f9d498e1a5679a254744e622348863dda2b8`

```dockerfile
```

-	Layers:
	-	`sha256:fcfe42fcc181dd410f64a92587a3d95b7cdce9de9a88872aad8afde721e26ac2`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1df09fdac5ffd0b30e685c75403a0460c54272bfd3eef15d448355bea555130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214891643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc909a08f01f5cc212f041d7e860f2bd19228685e1f26085b3af7b6f34dcec2`
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
# Tue, 04 Aug 2026 01:17:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:52 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:52 GMT
ARG VERSION=25.8.28.1
# Tue, 04 Aug 2026 01:17:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:22 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:22 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:22 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:22 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24fdbf4faa7b7d8cfe7cf3c94c51f2603c27a97cd26a7252ab3c26b69935e51`  
		Last Modified: Tue, 04 Aug 2026 01:18:41 GMT  
		Size: 7.5 MB (7533608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343b6d134db9ea687b80b3ef4186888acb2722f230f96e4b9f00a7699126b236`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 178.9 MB (178867976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adeefbfc999b0e6d2ff88a9a91c3bf48f389bb650e238537b5ff84bdccb31437`  
		Last Modified: Tue, 04 Aug 2026 01:18:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858196d7b305648122267a5faaa406cde371fa56b3377f645b19ea91e289bd62`  
		Last Modified: Tue, 04 Aug 2026 01:18:41 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f8a13e6adb7db42ce9d7c469d30b605ebcc64efa0367894c4281963f4c02ba`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a7776d830d24f8337bed36d019c946a450fd3ce2fc3f159be5a3de3ec8d3bc`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6affb7a5f302f7733f742f46de63fed50bc20d2ed3beda5cefe8eedc9b625613`  
		Last Modified: Tue, 04 Aug 2026 01:18:42 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b8a6c16046974048c695d08d94d43b68cb2b59752f641f0da3032c2d7829b8b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6e37c14a8b4b7f54dedccce71f08a54525c20bf126abc04bbdbed4462135d7`

```dockerfile
```

-	Layers:
	-	`sha256:f00ea5f518a747db4b1a02c95c612c4f96f1ad89bf8e0ac408f27eea16abd268`  
		Last Modified: Tue, 04 Aug 2026 01:18:40 GMT  
		Size: 26.4 KB (26410 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:25.8.29-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:25.8.29.51`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:25.8.29.51-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17-jammy`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.110`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.3.17.110-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:c3537e36f2bda06a1fc3f972448ea2301cb030a4e3e7671c2975694b4192be61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:9f3694d6452d38f000d42c9eeda35ab5aa5897723a5ffb08090008e7e3437e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261437051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0fcbe4c5f6d44a538a2db9b1a91e947ccde5c901cf9c6257b5f4f5dae7b5e`
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
# Tue, 04 Aug 2026 01:17:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:56 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444c15f9e0494e745c362fb8e0b1455f55ae7002ca46e87540b6b7a00db51a1c`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 7.6 MB (7553430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3568c6749f80a78d4f2a7d32e7feb1136b43fa499f37eaf7b04a8e2c792644e3`  
		Last Modified: Tue, 04 Aug 2026 01:18:56 GMT  
		Size: 223.3 MB (223277051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8e2f383fe57468dd98d714920fc8d955c40a0c8a0acb68c85efd1901dea36`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0fcef2c94cfec0d92a3b8c6f399f311eec996dad0769337e5934fd04ffada5`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95ebc0b79ed57d3f02870af4544064360652e53d2e0a0c3f903dca5442cc8cc`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827051784eae5a0516e60d601ef1dbceb57fb7fefaeac736056a01dd93a6fd04`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94870c1efd76d0beff3cdce386bf305c5a5f385cf91f590767771e98afef813d`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1379f1dc37b47f7573a394eefbb3df60033d414daf4758e8c368f6c6bc346d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9382ca67372c63452fe64ad75ca030bfd198368684ecd0a268fe5dd11648efd`

```dockerfile
```

-	Layers:
	-	`sha256:e4429326966fc7110586442d5e03bc2e26e4116280f55c6852038120851cee25`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78a40dbbc6e5db4eafc1fb7b4b61d6469f45b55bd8728de9a0069ab1607066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247127584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc829de990a418438eea4e62272491d4aabc645234255004c2f8714016e56aad`
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
# Tue, 04 Aug 2026 01:17:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:47 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fdde89cf8f49d38cffb7139afb036cac3aa260bd50c2a5cb2a16b69f04aa53`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 7.5 MB (7533557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b72a155246dd7095e981169432d22142924dab4c93543f4bf5fc0e28f62c2e`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 211.1 MB (211103942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd0e90d2b8405ddcdf2c2fba22f95b82d03bff6c62bd32f1105464b0b183367`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3f5d6630d3ebd27dbcd0d3abac930abcf7b778f0be79f403fafce9c4c7f085`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c21292a52711d5c8b8d9b7acfea29c00f990680164112b1a9590b20602c6f4a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3951a485573be5cf0cf3a5a679147bade1e6915fb2f0ada77a8a9b02464ca743`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e1c79ea5b970feb85842d61725bfb18f8c0ac2ae52ad0e1db8fefc3c30702422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5137de85f09056a1de754e8563a76afe109cc6deea8d2e33919ca8796c5d2fc3`

```dockerfile
```

-	Layers:
	-	`sha256:55e5207aa18dde9e4d467db3d2250cbe866258e25dee83f44dd3808dc2382ef0`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:c3537e36f2bda06a1fc3f972448ea2301cb030a4e3e7671c2975694b4192be61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:9f3694d6452d38f000d42c9eeda35ab5aa5897723a5ffb08090008e7e3437e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261437051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0fcbe4c5f6d44a538a2db9b1a91e947ccde5c901cf9c6257b5f4f5dae7b5e`
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
# Tue, 04 Aug 2026 01:17:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:56 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444c15f9e0494e745c362fb8e0b1455f55ae7002ca46e87540b6b7a00db51a1c`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 7.6 MB (7553430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3568c6749f80a78d4f2a7d32e7feb1136b43fa499f37eaf7b04a8e2c792644e3`  
		Last Modified: Tue, 04 Aug 2026 01:18:56 GMT  
		Size: 223.3 MB (223277051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8e2f383fe57468dd98d714920fc8d955c40a0c8a0acb68c85efd1901dea36`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0fcef2c94cfec0d92a3b8c6f399f311eec996dad0769337e5934fd04ffada5`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95ebc0b79ed57d3f02870af4544064360652e53d2e0a0c3f903dca5442cc8cc`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827051784eae5a0516e60d601ef1dbceb57fb7fefaeac736056a01dd93a6fd04`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94870c1efd76d0beff3cdce386bf305c5a5f385cf91f590767771e98afef813d`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1379f1dc37b47f7573a394eefbb3df60033d414daf4758e8c368f6c6bc346d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9382ca67372c63452fe64ad75ca030bfd198368684ecd0a268fe5dd11648efd`

```dockerfile
```

-	Layers:
	-	`sha256:e4429326966fc7110586442d5e03bc2e26e4116280f55c6852038120851cee25`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78a40dbbc6e5db4eafc1fb7b4b61d6469f45b55bd8728de9a0069ab1607066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247127584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc829de990a418438eea4e62272491d4aabc645234255004c2f8714016e56aad`
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
# Tue, 04 Aug 2026 01:17:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:47 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fdde89cf8f49d38cffb7139afb036cac3aa260bd50c2a5cb2a16b69f04aa53`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 7.5 MB (7533557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b72a155246dd7095e981169432d22142924dab4c93543f4bf5fc0e28f62c2e`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 211.1 MB (211103942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd0e90d2b8405ddcdf2c2fba22f95b82d03bff6c62bd32f1105464b0b183367`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3f5d6630d3ebd27dbcd0d3abac930abcf7b778f0be79f403fafce9c4c7f085`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c21292a52711d5c8b8d9b7acfea29c00f990680164112b1a9590b20602c6f4a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3951a485573be5cf0cf3a5a679147bade1e6915fb2f0ada77a8a9b02464ca743`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e1c79ea5b970feb85842d61725bfb18f8c0ac2ae52ad0e1db8fefc3c30702422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5137de85f09056a1de754e8563a76afe109cc6deea8d2e33919ca8796c5d2fc3`

```dockerfile
```

-	Layers:
	-	`sha256:55e5207aa18dde9e4d467db3d2250cbe866258e25dee83f44dd3808dc2382ef0`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6`

```console
$ docker pull clickhouse@sha256:c3537e36f2bda06a1fc3f972448ea2301cb030a4e3e7671c2975694b4192be61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:9f3694d6452d38f000d42c9eeda35ab5aa5897723a5ffb08090008e7e3437e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261437051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0fcbe4c5f6d44a538a2db9b1a91e947ccde5c901cf9c6257b5f4f5dae7b5e`
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
# Tue, 04 Aug 2026 01:17:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:56 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444c15f9e0494e745c362fb8e0b1455f55ae7002ca46e87540b6b7a00db51a1c`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 7.6 MB (7553430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3568c6749f80a78d4f2a7d32e7feb1136b43fa499f37eaf7b04a8e2c792644e3`  
		Last Modified: Tue, 04 Aug 2026 01:18:56 GMT  
		Size: 223.3 MB (223277051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8e2f383fe57468dd98d714920fc8d955c40a0c8a0acb68c85efd1901dea36`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0fcef2c94cfec0d92a3b8c6f399f311eec996dad0769337e5934fd04ffada5`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95ebc0b79ed57d3f02870af4544064360652e53d2e0a0c3f903dca5442cc8cc`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827051784eae5a0516e60d601ef1dbceb57fb7fefaeac736056a01dd93a6fd04`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94870c1efd76d0beff3cdce386bf305c5a5f385cf91f590767771e98afef813d`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1379f1dc37b47f7573a394eefbb3df60033d414daf4758e8c368f6c6bc346d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9382ca67372c63452fe64ad75ca030bfd198368684ecd0a268fe5dd11648efd`

```dockerfile
```

-	Layers:
	-	`sha256:e4429326966fc7110586442d5e03bc2e26e4116280f55c6852038120851cee25`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78a40dbbc6e5db4eafc1fb7b4b61d6469f45b55bd8728de9a0069ab1607066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247127584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc829de990a418438eea4e62272491d4aabc645234255004c2f8714016e56aad`
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
# Tue, 04 Aug 2026 01:17:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:47 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fdde89cf8f49d38cffb7139afb036cac3aa260bd50c2a5cb2a16b69f04aa53`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 7.5 MB (7533557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b72a155246dd7095e981169432d22142924dab4c93543f4bf5fc0e28f62c2e`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 211.1 MB (211103942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd0e90d2b8405ddcdf2c2fba22f95b82d03bff6c62bd32f1105464b0b183367`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3f5d6630d3ebd27dbcd0d3abac930abcf7b778f0be79f403fafce9c4c7f085`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c21292a52711d5c8b8d9b7acfea29c00f990680164112b1a9590b20602c6f4a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3951a485573be5cf0cf3a5a679147bade1e6915fb2f0ada77a8a9b02464ca743`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e1c79ea5b970feb85842d61725bfb18f8c0ac2ae52ad0e1db8fefc3c30702422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5137de85f09056a1de754e8563a76afe109cc6deea8d2e33919ca8796c5d2fc3`

```dockerfile
```

-	Layers:
	-	`sha256:55e5207aa18dde9e4d467db3d2250cbe866258e25dee83f44dd3808dc2382ef0`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6-jammy`

```console
$ docker pull clickhouse@sha256:c3537e36f2bda06a1fc3f972448ea2301cb030a4e3e7671c2975694b4192be61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:9f3694d6452d38f000d42c9eeda35ab5aa5897723a5ffb08090008e7e3437e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261437051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0fcbe4c5f6d44a538a2db9b1a91e947ccde5c901cf9c6257b5f4f5dae7b5e`
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
# Tue, 04 Aug 2026 01:17:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:56 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444c15f9e0494e745c362fb8e0b1455f55ae7002ca46e87540b6b7a00db51a1c`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 7.6 MB (7553430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3568c6749f80a78d4f2a7d32e7feb1136b43fa499f37eaf7b04a8e2c792644e3`  
		Last Modified: Tue, 04 Aug 2026 01:18:56 GMT  
		Size: 223.3 MB (223277051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a8e2f383fe57468dd98d714920fc8d955c40a0c8a0acb68c85efd1901dea36`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0fcef2c94cfec0d92a3b8c6f399f311eec996dad0769337e5934fd04ffada5`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95ebc0b79ed57d3f02870af4544064360652e53d2e0a0c3f903dca5442cc8cc`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827051784eae5a0516e60d601ef1dbceb57fb7fefaeac736056a01dd93a6fd04`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94870c1efd76d0beff3cdce386bf305c5a5f385cf91f590767771e98afef813d`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1379f1dc37b47f7573a394eefbb3df60033d414daf4758e8c368f6c6bc346d61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9382ca67372c63452fe64ad75ca030bfd198368684ecd0a268fe5dd11648efd`

```dockerfile
```

-	Layers:
	-	`sha256:e4429326966fc7110586442d5e03bc2e26e4116280f55c6852038120851cee25`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9e78a40dbbc6e5db4eafc1fb7b4b61d6469f45b55bd8728de9a0069ab1607066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247127584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc829de990a418438eea4e62272491d4aabc645234255004c2f8714016e56aad`
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
# Tue, 04 Aug 2026 01:17:47 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:47 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:47 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:47 GMT
ARG VERSION=26.5.6.64
# Tue, 04 Aug 2026 01:17:47 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fdde89cf8f49d38cffb7139afb036cac3aa260bd50c2a5cb2a16b69f04aa53`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 7.5 MB (7533557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b72a155246dd7095e981169432d22142924dab4c93543f4bf5fc0e28f62c2e`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 211.1 MB (211103942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd0e90d2b8405ddcdf2c2fba22f95b82d03bff6c62bd32f1105464b0b183367`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3f5d6630d3ebd27dbcd0d3abac930abcf7b778f0be79f403fafce9c4c7f085`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c21292a52711d5c8b8d9b7acfea29c00f990680164112b1a9590b20602c6f4a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3951a485573be5cf0cf3a5a679147bade1e6915fb2f0ada77a8a9b02464ca743`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e1c79ea5b970feb85842d61725bfb18f8c0ac2ae52ad0e1db8fefc3c30702422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5137de85f09056a1de754e8563a76afe109cc6deea8d2e33919ca8796c5d2fc3`

```dockerfile
```

-	Layers:
	-	`sha256:55e5207aa18dde9e4d467db3d2250cbe866258e25dee83f44dd3808dc2382ef0`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.113`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.5.6.113-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:291e11282fe62365cec41135a0474f1bed0f192bf8ef328ede1863477bd79627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c4050fe600ede861092f5b3ccde0f55b91cf050f7ac1e4f8e886ac5aaf34820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276735089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ccdb60d182959e7fe9d49e58b808d1de1e6e5b1408b82980dd1e38b658e0439`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:30 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:30 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ebdd7402ec41aa9504c1f7da25c56327fcd5221302a5bf5a30b7cf0fbe787`  
		Last Modified: Tue, 04 Aug 2026 01:18:00 GMT  
		Size: 238.6 MB (238575196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40441404f8eeb3a27098f8d085e2cfea44394fbcaf8bf90d2d8e8c76a01ddb5`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8df07dfcf32f5bbcceea6535f287ec353d413a929d09be1337705323eb06b82`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db55002d93b77dae19f1a125bb1b6a7977643df86190a62e06b90b067d725d91`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b16953e56d13b44668b1bf20a11bbc468f1fecd2725c50aa740e6c85ba225`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8b77c6c9e8158a10833e0a9ef9eeeca8b79511ded7b4e2450de53e59e610d9`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:65ba697f9b3c4278c556654ac18448ddeb61fd1f5887c7956ab5fcb2baecab28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d2f783b152532be0ba6a63c1dd79b3c2c8f11077c0104d450ec8833923fb29`

```dockerfile
```

-	Layers:
	-	`sha256:708fa578712270fc4537e12e4a2d410a6916bc5417b2a79ba98af40fd033a785`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ed4fe6fdbb0a7ae24db89d72bc5a5854245afa9853532e05553e4076b0ff3eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257183920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01473f9d736f9bcb22ddf3c0febab94781487c2fd90bdf14038b3b26177db030`
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
# Tue, 04 Aug 2026 01:16:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:51 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1246c1007c3bd59f3e29265fb0b44c06a8c322f6529096a662a1e573e505f`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 7.5 MB (7533545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed79138026bd9a7fda0692788894128da14359ffe16f29bf8502b298904c523`  
		Last Modified: Tue, 04 Aug 2026 01:17:53 GMT  
		Size: 221.2 MB (221160288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cc7a5353fce70060aea08a67758af53e9b41bed359a89975e448aabe936d49`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954931cf9d9cd5295a0cd748dfd9e033ccacc3336fa553438303c2f11b1da8c6`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131da2f45cf7020246b2cc418a4a6d3dbebd0550ae8e58dac5b7b484f443e45`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8471a9a44f6c287d84e700f0c9b8671a6cfb4b3fbb5425208f5a66d4a0add`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45528a1bbcd1de77c69550afed9438650e7ff2c226113c88285e3432bc291f8e`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6d4bd57497293f24b27c3fd8677b1ced344f75cdbc2276d15caebc1240ce3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07adb4fe36ab6485a9c4117dadbb3b6bd61c7b15e6ad268b3ec024d48265a118`

```dockerfile
```

-	Layers:
	-	`sha256:eb4414a696ec76424674918eb8c1c05b39689efd88ca38d2fee31188be2a7d37`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:291e11282fe62365cec41135a0474f1bed0f192bf8ef328ede1863477bd79627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c4050fe600ede861092f5b3ccde0f55b91cf050f7ac1e4f8e886ac5aaf34820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276735089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ccdb60d182959e7fe9d49e58b808d1de1e6e5b1408b82980dd1e38b658e0439`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:30 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:30 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ebdd7402ec41aa9504c1f7da25c56327fcd5221302a5bf5a30b7cf0fbe787`  
		Last Modified: Tue, 04 Aug 2026 01:18:00 GMT  
		Size: 238.6 MB (238575196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40441404f8eeb3a27098f8d085e2cfea44394fbcaf8bf90d2d8e8c76a01ddb5`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8df07dfcf32f5bbcceea6535f287ec353d413a929d09be1337705323eb06b82`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db55002d93b77dae19f1a125bb1b6a7977643df86190a62e06b90b067d725d91`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b16953e56d13b44668b1bf20a11bbc468f1fecd2725c50aa740e6c85ba225`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8b77c6c9e8158a10833e0a9ef9eeeca8b79511ded7b4e2450de53e59e610d9`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:65ba697f9b3c4278c556654ac18448ddeb61fd1f5887c7956ab5fcb2baecab28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d2f783b152532be0ba6a63c1dd79b3c2c8f11077c0104d450ec8833923fb29`

```dockerfile
```

-	Layers:
	-	`sha256:708fa578712270fc4537e12e4a2d410a6916bc5417b2a79ba98af40fd033a785`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ed4fe6fdbb0a7ae24db89d72bc5a5854245afa9853532e05553e4076b0ff3eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257183920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01473f9d736f9bcb22ddf3c0febab94781487c2fd90bdf14038b3b26177db030`
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
# Tue, 04 Aug 2026 01:16:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:51 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1246c1007c3bd59f3e29265fb0b44c06a8c322f6529096a662a1e573e505f`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 7.5 MB (7533545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed79138026bd9a7fda0692788894128da14359ffe16f29bf8502b298904c523`  
		Last Modified: Tue, 04 Aug 2026 01:17:53 GMT  
		Size: 221.2 MB (221160288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cc7a5353fce70060aea08a67758af53e9b41bed359a89975e448aabe936d49`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954931cf9d9cd5295a0cd748dfd9e033ccacc3336fa553438303c2f11b1da8c6`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131da2f45cf7020246b2cc418a4a6d3dbebd0550ae8e58dac5b7b484f443e45`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8471a9a44f6c287d84e700f0c9b8671a6cfb4b3fbb5425208f5a66d4a0add`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45528a1bbcd1de77c69550afed9438650e7ff2c226113c88285e3432bc291f8e`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6d4bd57497293f24b27c3fd8677b1ced344f75cdbc2276d15caebc1240ce3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07adb4fe36ab6485a9c4117dadbb3b6bd61c7b15e6ad268b3ec024d48265a118`

```dockerfile
```

-	Layers:
	-	`sha256:eb4414a696ec76424674918eb8c1c05b39689efd88ca38d2fee31188be2a7d37`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2`

```console
$ docker pull clickhouse@sha256:291e11282fe62365cec41135a0474f1bed0f192bf8ef328ede1863477bd79627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c4050fe600ede861092f5b3ccde0f55b91cf050f7ac1e4f8e886ac5aaf34820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276735089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ccdb60d182959e7fe9d49e58b808d1de1e6e5b1408b82980dd1e38b658e0439`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:30 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:30 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ebdd7402ec41aa9504c1f7da25c56327fcd5221302a5bf5a30b7cf0fbe787`  
		Last Modified: Tue, 04 Aug 2026 01:18:00 GMT  
		Size: 238.6 MB (238575196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40441404f8eeb3a27098f8d085e2cfea44394fbcaf8bf90d2d8e8c76a01ddb5`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8df07dfcf32f5bbcceea6535f287ec353d413a929d09be1337705323eb06b82`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db55002d93b77dae19f1a125bb1b6a7977643df86190a62e06b90b067d725d91`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b16953e56d13b44668b1bf20a11bbc468f1fecd2725c50aa740e6c85ba225`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8b77c6c9e8158a10833e0a9ef9eeeca8b79511ded7b4e2450de53e59e610d9`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:65ba697f9b3c4278c556654ac18448ddeb61fd1f5887c7956ab5fcb2baecab28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d2f783b152532be0ba6a63c1dd79b3c2c8f11077c0104d450ec8833923fb29`

```dockerfile
```

-	Layers:
	-	`sha256:708fa578712270fc4537e12e4a2d410a6916bc5417b2a79ba98af40fd033a785`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ed4fe6fdbb0a7ae24db89d72bc5a5854245afa9853532e05553e4076b0ff3eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257183920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01473f9d736f9bcb22ddf3c0febab94781487c2fd90bdf14038b3b26177db030`
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
# Tue, 04 Aug 2026 01:16:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:51 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1246c1007c3bd59f3e29265fb0b44c06a8c322f6529096a662a1e573e505f`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 7.5 MB (7533545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed79138026bd9a7fda0692788894128da14359ffe16f29bf8502b298904c523`  
		Last Modified: Tue, 04 Aug 2026 01:17:53 GMT  
		Size: 221.2 MB (221160288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cc7a5353fce70060aea08a67758af53e9b41bed359a89975e448aabe936d49`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954931cf9d9cd5295a0cd748dfd9e033ccacc3336fa553438303c2f11b1da8c6`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131da2f45cf7020246b2cc418a4a6d3dbebd0550ae8e58dac5b7b484f443e45`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8471a9a44f6c287d84e700f0c9b8671a6cfb4b3fbb5425208f5a66d4a0add`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45528a1bbcd1de77c69550afed9438650e7ff2c226113c88285e3432bc291f8e`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6d4bd57497293f24b27c3fd8677b1ced344f75cdbc2276d15caebc1240ce3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07adb4fe36ab6485a9c4117dadbb3b6bd61c7b15e6ad268b3ec024d48265a118`

```dockerfile
```

-	Layers:
	-	`sha256:eb4414a696ec76424674918eb8c1c05b39689efd88ca38d2fee31188be2a7d37`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2-jammy`

```console
$ docker pull clickhouse@sha256:291e11282fe62365cec41135a0474f1bed0f192bf8ef328ede1863477bd79627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c4050fe600ede861092f5b3ccde0f55b91cf050f7ac1e4f8e886ac5aaf34820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276735089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ccdb60d182959e7fe9d49e58b808d1de1e6e5b1408b82980dd1e38b658e0439`
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
# Tue, 04 Aug 2026 01:16:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:59 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:59 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:30 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:30 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8838c36a05a889e986d7683021a801569e66000396decd099a7066dc35c07`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 7.6 MB (7553326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ebdd7402ec41aa9504c1f7da25c56327fcd5221302a5bf5a30b7cf0fbe787`  
		Last Modified: Tue, 04 Aug 2026 01:18:00 GMT  
		Size: 238.6 MB (238575196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40441404f8eeb3a27098f8d085e2cfea44394fbcaf8bf90d2d8e8c76a01ddb5`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8df07dfcf32f5bbcceea6535f287ec353d413a929d09be1337705323eb06b82`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db55002d93b77dae19f1a125bb1b6a7977643df86190a62e06b90b067d725d91`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b16953e56d13b44668b1bf20a11bbc468f1fecd2725c50aa740e6c85ba225`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8b77c6c9e8158a10833e0a9ef9eeeca8b79511ded7b4e2450de53e59e610d9`  
		Last Modified: Tue, 04 Aug 2026 01:17:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:65ba697f9b3c4278c556654ac18448ddeb61fd1f5887c7956ab5fcb2baecab28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d2f783b152532be0ba6a63c1dd79b3c2c8f11077c0104d450ec8833923fb29`

```dockerfile
```

-	Layers:
	-	`sha256:708fa578712270fc4537e12e4a2d410a6916bc5417b2a79ba98af40fd033a785`  
		Last Modified: Tue, 04 Aug 2026 01:17:56 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ed4fe6fdbb0a7ae24db89d72bc5a5854245afa9853532e05553e4076b0ff3eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257183920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01473f9d736f9bcb22ddf3c0febab94781487c2fd90bdf14038b3b26177db030`
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
# Tue, 04 Aug 2026 01:16:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:16:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:16:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:16:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:16:51 GMT
ARG VERSION=26.6.2.81
# Tue, 04 Aug 2026 01:16:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:26 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:17:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:17:26 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:17:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:17:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e1246c1007c3bd59f3e29265fb0b44c06a8c322f6529096a662a1e573e505f`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 7.5 MB (7533545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed79138026bd9a7fda0692788894128da14359ffe16f29bf8502b298904c523`  
		Last Modified: Tue, 04 Aug 2026 01:17:53 GMT  
		Size: 221.2 MB (221160288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cc7a5353fce70060aea08a67758af53e9b41bed359a89975e448aabe936d49`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954931cf9d9cd5295a0cd748dfd9e033ccacc3336fa553438303c2f11b1da8c6`  
		Last Modified: Tue, 04 Aug 2026 01:17:48 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131da2f45cf7020246b2cc418a4a6d3dbebd0550ae8e58dac5b7b484f443e45`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8471a9a44f6c287d84e700f0c9b8671a6cfb4b3fbb5425208f5a66d4a0add`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45528a1bbcd1de77c69550afed9438650e7ff2c226113c88285e3432bc291f8e`  
		Last Modified: Tue, 04 Aug 2026 01:17:49 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f6d4bd57497293f24b27c3fd8677b1ced344f75cdbc2276d15caebc1240ce3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07adb4fe36ab6485a9c4117dadbb3b6bd61c7b15e6ad268b3ec024d48265a118`

```dockerfile
```

-	Layers:
	-	`sha256:eb4414a696ec76424674918eb8c1c05b39689efd88ca38d2fee31188be2a7d37`  
		Last Modified: Tue, 04 Aug 2026 01:17:47 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.160`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.6.2.160-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:16537a9270ad63acbbee437ebbb826ea62b49690e863ae33e2fc5c16b7d9466c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4bb280797ced3f5307499fdf7b500924e4f7b45651675e82dae949c89474f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265603616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1711bfc83697caf0d6f027a08afdb00b95527669f5fd859ba3774ba9ec9d29cd`
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
# Tue, 04 Aug 2026 01:15:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:49 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:16 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f853ea2253edbf58d86a67b4b58a7f26eafb4e4fa6f0faece9a854dd9cbbd88e`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 7.6 MB (7553358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3689e1a8b5c02a33d6650aa5fdf07b9b6d45e76f288f4555893456048b019d9`  
		Last Modified: Tue, 04 Aug 2026 01:16:43 GMT  
		Size: 227.4 MB (227443689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2268308acffb4d8cea16f5367f1e73fcb8fcea52cc788762f5f9db991f1cce`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02194f5bab2f4fdb21fc5213b954a6f6f9f99646cbd4d45d4a3fe1cfa51469f1`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581f7a93e7753bf4cd34c1c2120a48071b7d26b5d35b7106b0b8a3b788302ea`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dcd47d4907136353cadacadce16c9fc994a537593afa1d01a8f7c37d871549`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189c5c8c7d8d60993f89087bb917290fcffcbba3c450551c73549c4968d24264`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:345ef37f320533881f20d94e91cc544997f5123f6554beff31d85020c959b3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30570d09aab7bfada9695fc31b91adc1471084a7c4ace8a000e78e2a4e8aaae3`

```dockerfile
```

-	Layers:
	-	`sha256:e0d23bfa59e5f33c5f5850c8c944d23ba11f5b9d6fb4989155336a8c14d5bdff`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9b4964cafe133442377ea8b0125b271e5ca3f51f21ce15a100c2fb7c83c49a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248913606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8678a42aece09de54d418f7c0b740163435953c86f8af0ca7eb05d5d65c9c8cd`
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
# Tue, 04 Aug 2026 01:15:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:38 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:09 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8d1479475b95d0eac4c6768829efd873d9bbbf6b7d8ab7418bfe1ff9eaa4e7`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 7.5 MB (7533490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fb734902e44c43b95ea373013783288d6c1a393c490ed216a63d04b23ce6c5`  
		Last Modified: Tue, 04 Aug 2026 01:16:36 GMT  
		Size: 212.9 MB (212890029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf65b54b954ee5448bad241e4bd42107f0e6024513ea712267e0216704cb4c66`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490764393fbe25c2e9460374b84313a07b8f4dc687022f03475e792575693f86`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28d95827c4ee71c4e96a5178131f78bc7cd55639a452149efb6db6a116201df`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee1b2ac977127a4bca759f57de7366ce6b49437f43f42233b58217205ba7482`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2080c7ec5793929e66f55436e1839df377565568b4d294d905fc7f03b945a4`  
		Last Modified: Tue, 04 Aug 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:52c59f22827b2b5b87d87f0c8107679143ab6583fb403c136877c82b3bc4acc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7e99104cd6af92c0fed82082f770ed546c2353574b8bdd18ae21566bfa0e9d`

```dockerfile
```

-	Layers:
	-	`sha256:c6e7b08bb7fe47defd3484c1d83b3e32cc04b1ddd34f0fc9b6393f9d052e43b6`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:16537a9270ad63acbbee437ebbb826ea62b49690e863ae33e2fc5c16b7d9466c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4bb280797ced3f5307499fdf7b500924e4f7b45651675e82dae949c89474f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265603616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1711bfc83697caf0d6f027a08afdb00b95527669f5fd859ba3774ba9ec9d29cd`
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
# Tue, 04 Aug 2026 01:15:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:49 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:16 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f853ea2253edbf58d86a67b4b58a7f26eafb4e4fa6f0faece9a854dd9cbbd88e`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 7.6 MB (7553358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3689e1a8b5c02a33d6650aa5fdf07b9b6d45e76f288f4555893456048b019d9`  
		Last Modified: Tue, 04 Aug 2026 01:16:43 GMT  
		Size: 227.4 MB (227443689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2268308acffb4d8cea16f5367f1e73fcb8fcea52cc788762f5f9db991f1cce`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02194f5bab2f4fdb21fc5213b954a6f6f9f99646cbd4d45d4a3fe1cfa51469f1`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581f7a93e7753bf4cd34c1c2120a48071b7d26b5d35b7106b0b8a3b788302ea`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dcd47d4907136353cadacadce16c9fc994a537593afa1d01a8f7c37d871549`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189c5c8c7d8d60993f89087bb917290fcffcbba3c450551c73549c4968d24264`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:345ef37f320533881f20d94e91cc544997f5123f6554beff31d85020c959b3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30570d09aab7bfada9695fc31b91adc1471084a7c4ace8a000e78e2a4e8aaae3`

```dockerfile
```

-	Layers:
	-	`sha256:e0d23bfa59e5f33c5f5850c8c944d23ba11f5b9d6fb4989155336a8c14d5bdff`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9b4964cafe133442377ea8b0125b271e5ca3f51f21ce15a100c2fb7c83c49a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248913606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8678a42aece09de54d418f7c0b740163435953c86f8af0ca7eb05d5d65c9c8cd`
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
# Tue, 04 Aug 2026 01:15:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:38 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:09 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8d1479475b95d0eac4c6768829efd873d9bbbf6b7d8ab7418bfe1ff9eaa4e7`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 7.5 MB (7533490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fb734902e44c43b95ea373013783288d6c1a393c490ed216a63d04b23ce6c5`  
		Last Modified: Tue, 04 Aug 2026 01:16:36 GMT  
		Size: 212.9 MB (212890029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf65b54b954ee5448bad241e4bd42107f0e6024513ea712267e0216704cb4c66`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490764393fbe25c2e9460374b84313a07b8f4dc687022f03475e792575693f86`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28d95827c4ee71c4e96a5178131f78bc7cd55639a452149efb6db6a116201df`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee1b2ac977127a4bca759f57de7366ce6b49437f43f42233b58217205ba7482`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2080c7ec5793929e66f55436e1839df377565568b4d294d905fc7f03b945a4`  
		Last Modified: Tue, 04 Aug 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:52c59f22827b2b5b87d87f0c8107679143ab6583fb403c136877c82b3bc4acc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7e99104cd6af92c0fed82082f770ed546c2353574b8bdd18ae21566bfa0e9d`

```dockerfile
```

-	Layers:
	-	`sha256:c6e7b08bb7fe47defd3484c1d83b3e32cc04b1ddd34f0fc9b6393f9d052e43b6`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.7.3-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.7.3.19`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:26.7.3.19-jammy`

```console
$ docker pull clickhouse@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:16537a9270ad63acbbee437ebbb826ea62b49690e863ae33e2fc5c16b7d9466c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4bb280797ced3f5307499fdf7b500924e4f7b45651675e82dae949c89474f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265603616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1711bfc83697caf0d6f027a08afdb00b95527669f5fd859ba3774ba9ec9d29cd`
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
# Tue, 04 Aug 2026 01:15:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:49 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:16 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f853ea2253edbf58d86a67b4b58a7f26eafb4e4fa6f0faece9a854dd9cbbd88e`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 7.6 MB (7553358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3689e1a8b5c02a33d6650aa5fdf07b9b6d45e76f288f4555893456048b019d9`  
		Last Modified: Tue, 04 Aug 2026 01:16:43 GMT  
		Size: 227.4 MB (227443689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2268308acffb4d8cea16f5367f1e73fcb8fcea52cc788762f5f9db991f1cce`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02194f5bab2f4fdb21fc5213b954a6f6f9f99646cbd4d45d4a3fe1cfa51469f1`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581f7a93e7753bf4cd34c1c2120a48071b7d26b5d35b7106b0b8a3b788302ea`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dcd47d4907136353cadacadce16c9fc994a537593afa1d01a8f7c37d871549`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189c5c8c7d8d60993f89087bb917290fcffcbba3c450551c73549c4968d24264`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:345ef37f320533881f20d94e91cc544997f5123f6554beff31d85020c959b3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30570d09aab7bfada9695fc31b91adc1471084a7c4ace8a000e78e2a4e8aaae3`

```dockerfile
```

-	Layers:
	-	`sha256:e0d23bfa59e5f33c5f5850c8c944d23ba11f5b9d6fb4989155336a8c14d5bdff`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9b4964cafe133442377ea8b0125b271e5ca3f51f21ce15a100c2fb7c83c49a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248913606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8678a42aece09de54d418f7c0b740163435953c86f8af0ca7eb05d5d65c9c8cd`
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
# Tue, 04 Aug 2026 01:15:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:38 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:09 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8d1479475b95d0eac4c6768829efd873d9bbbf6b7d8ab7418bfe1ff9eaa4e7`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 7.5 MB (7533490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fb734902e44c43b95ea373013783288d6c1a393c490ed216a63d04b23ce6c5`  
		Last Modified: Tue, 04 Aug 2026 01:16:36 GMT  
		Size: 212.9 MB (212890029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf65b54b954ee5448bad241e4bd42107f0e6024513ea712267e0216704cb4c66`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490764393fbe25c2e9460374b84313a07b8f4dc687022f03475e792575693f86`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28d95827c4ee71c4e96a5178131f78bc7cd55639a452149efb6db6a116201df`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee1b2ac977127a4bca759f57de7366ce6b49437f43f42233b58217205ba7482`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2080c7ec5793929e66f55436e1839df377565568b4d294d905fc7f03b945a4`  
		Last Modified: Tue, 04 Aug 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:52c59f22827b2b5b87d87f0c8107679143ab6583fb403c136877c82b3bc4acc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7e99104cd6af92c0fed82082f770ed546c2353574b8bdd18ae21566bfa0e9d`

```dockerfile
```

-	Layers:
	-	`sha256:c6e7b08bb7fe47defd3484c1d83b3e32cc04b1ddd34f0fc9b6393f9d052e43b6`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:16537a9270ad63acbbee437ebbb826ea62b49690e863ae33e2fc5c16b7d9466c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:d4bb280797ced3f5307499fdf7b500924e4f7b45651675e82dae949c89474f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265603616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1711bfc83697caf0d6f027a08afdb00b95527669f5fd859ba3774ba9ec9d29cd`
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
# Tue, 04 Aug 2026 01:15:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:49 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:16 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f853ea2253edbf58d86a67b4b58a7f26eafb4e4fa6f0faece9a854dd9cbbd88e`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 7.6 MB (7553358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3689e1a8b5c02a33d6650aa5fdf07b9b6d45e76f288f4555893456048b019d9`  
		Last Modified: Tue, 04 Aug 2026 01:16:43 GMT  
		Size: 227.4 MB (227443689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2268308acffb4d8cea16f5367f1e73fcb8fcea52cc788762f5f9db991f1cce`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02194f5bab2f4fdb21fc5213b954a6f6f9f99646cbd4d45d4a3fe1cfa51469f1`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581f7a93e7753bf4cd34c1c2120a48071b7d26b5d35b7106b0b8a3b788302ea`  
		Last Modified: Tue, 04 Aug 2026 01:16:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dcd47d4907136353cadacadce16c9fc994a537593afa1d01a8f7c37d871549`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189c5c8c7d8d60993f89087bb917290fcffcbba3c450551c73549c4968d24264`  
		Last Modified: Tue, 04 Aug 2026 01:16:40 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:345ef37f320533881f20d94e91cc544997f5123f6554beff31d85020c959b3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30570d09aab7bfada9695fc31b91adc1471084a7c4ace8a000e78e2a4e8aaae3`

```dockerfile
```

-	Layers:
	-	`sha256:e0d23bfa59e5f33c5f5850c8c944d23ba11f5b9d6fb4989155336a8c14d5bdff`  
		Last Modified: Tue, 04 Aug 2026 01:16:38 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:9b4964cafe133442377ea8b0125b271e5ca3f51f21ce15a100c2fb7c83c49a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248913606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8678a42aece09de54d418f7c0b740163435953c86f8af0ca7eb05d5d65c9c8cd`
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
# Tue, 04 Aug 2026 01:15:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 04 Aug 2026 01:15:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:15:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:15:38 GMT
ARG VERSION=26.7.1.1315
# Tue, 04 Aug 2026 01:15:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:16:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:16:09 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:16:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:16:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:16:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:16:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:16:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8d1479475b95d0eac4c6768829efd873d9bbbf6b7d8ab7418bfe1ff9eaa4e7`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 7.5 MB (7533490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fb734902e44c43b95ea373013783288d6c1a393c490ed216a63d04b23ce6c5`  
		Last Modified: Tue, 04 Aug 2026 01:16:36 GMT  
		Size: 212.9 MB (212890029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf65b54b954ee5448bad241e4bd42107f0e6024513ea712267e0216704cb4c66`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490764393fbe25c2e9460374b84313a07b8f4dc687022f03475e792575693f86`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28d95827c4ee71c4e96a5178131f78bc7cd55639a452149efb6db6a116201df`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee1b2ac977127a4bca759f57de7366ce6b49437f43f42233b58217205ba7482`  
		Last Modified: Tue, 04 Aug 2026 01:16:32 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2080c7ec5793929e66f55436e1839df377565568b4d294d905fc7f03b945a4`  
		Last Modified: Tue, 04 Aug 2026 01:16:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:52c59f22827b2b5b87d87f0c8107679143ab6583fb403c136877c82b3bc4acc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7e99104cd6af92c0fed82082f770ed546c2353574b8bdd18ae21566bfa0e9d`

```dockerfile
```

-	Layers:
	-	`sha256:c6e7b08bb7fe47defd3484c1d83b3e32cc04b1ddd34f0fc9b6393f9d052e43b6`  
		Last Modified: Tue, 04 Aug 2026 01:16:31 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:6dae8aa29060c44c2c40938d102b4e2f820ce67e4ee57512c2b51ba56bc2a6f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:88b04163e1331c411a575c97e5c90a534dd0f4b0eb545c10777322f30c5c9202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265285830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd37f422aaf5d03f53adc245c033dc5cf7060f9dd143b14083111122256f1d8`
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
# Tue, 04 Aug 2026 01:17:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:57 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:27 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:27 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b3ded8802577b242e68527884c1f8c192239f2349866a4b28cc17ffeb1524`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 7.6 MB (7553379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe93dc6597953456c1f449633c17abab2fc69e76f3440e46949e492f78a99284`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 227.1 MB (227125883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5249f067097d934318efe75a217c9df43f147541f101ae96f5c47b3d3f61238a`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91ff72da037befc75d95ff7c9c331be15c911f7c4da77bb9a9b78c5ef74ec58`  
		Last Modified: Tue, 04 Aug 2026 01:18:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf53fbb1255d15e9d37e056e58f14606cb76552ab9b343c0c5e487485a8f833e`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6319f99361e01bd6e6edc3fe1a5060ad2009fd922ded5c19d89194e471d21666`  
		Last Modified: Tue, 04 Aug 2026 01:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f19e347e0d57dde801623295f37a14f340ea09496b6e728a41081f743c942`  
		Last Modified: Tue, 04 Aug 2026 01:18:55 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1657290f45a3a8d35559d5783ad7a74181793b2c243908be093718130229628c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdcf18d3ec84501c646fb8cdd477d3688cc596674771080ca4a0d5f160149b`

```dockerfile
```

-	Layers:
	-	`sha256:10c53534000dcbd82b433ff0a362b19b3a867be0e71b4ac0d650298b70d0ebd2`  
		Last Modified: Tue, 04 Aug 2026 01:18:52 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:49a29b8e813ee21966b2c6c1c4f5e41dece885f24411804f7637970df6717ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246729893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a84e59a6f3c83966f23cc389aa9b05d4c55de852df1f0ef1796fbc688eef8`
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
# Tue, 04 Aug 2026 01:17:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 04 Aug 2026 01:17:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 04 Aug 2026 01:17:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPO_CHANNEL=stable
# Tue, 04 Aug 2026 01:17:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 04 Aug 2026 01:17:50 GMT
ARG VERSION=26.3.17.56
# Tue, 04 Aug 2026 01:17:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:21 GMT
ENV TZ=UTC
# Tue, 04 Aug 2026 01:18:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 04 Aug 2026 01:18:21 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 04 Aug 2026 01:18:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 04 Aug 2026 01:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bbc10b3a080eee41eb91c9dad8d964adacf50859e12947ca7d32e5aad3e39d`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 7.5 MB (7533585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c8a46badeeab3ed59ee6606281ae902ce89705dc8a2860d8e37df845e23de`  
		Last Modified: Tue, 04 Aug 2026 01:18:48 GMT  
		Size: 210.7 MB (210706226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffddd7a589cb26ee53105abf4f411ce19f0b8b40288f7d4cfae7e8a305ae84`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe08cfa857677bb94ece6e0aba7b9cbf2e6ee3947e324c1ecd554f0ce7d05c`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0add86906fe9044e327802f2a90df2733b16f5334030fad7b85400ff9a4b710a`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46bba853683d1bab3de073bda2146f9ec5b6cc26762239c5261695cef199a7`  
		Last Modified: Tue, 04 Aug 2026 01:18:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b99292689bbdb081f716cd70e7ebcb3620db9f28ef16e43f2ccd69a34aa588a`  
		Last Modified: Tue, 04 Aug 2026 01:18:45 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:12989781efed81884b605f014cfc14aa734788808125c8fd6f52b185d08ff0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0da1d9a8ffcca776da3df7b25a79062b6d568978a600080697dbbb1a254648`

```dockerfile
```

-	Layers:
	-	`sha256:a5e27b59cd075857952308b73ac8d14a0fdf603935a6d807f775261761feef26`  
		Last Modified: Tue, 04 Aug 2026 01:18:43 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json
