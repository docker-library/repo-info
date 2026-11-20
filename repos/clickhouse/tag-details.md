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
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10-jammy`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3-jammy`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7-jammy`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62-jammy`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3-jammy`

```console
$ docker pull clickhouse@sha256:7a8d39c87856aee7b39ffaf4c827a9554c11d37f217a64b2a5df2aff5bf15975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:709e02609195f84ceb74b88a507b1d07d777eb3732d917891f500a1084afb55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267349724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954094319f3aa92150de782e84b5bf32202826d6c7fabf0fb2914e75d28b3b3a`
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
# Fri, 20 Nov 2026 03:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:14 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77fc37c382e495deb04837921b4a470d17b6f52270e94e5f327461585f54b26`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.6 MB (7551980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1466d65e4047e59227fb903915dc39f40d48a858449ed4a56e2bc59a529e316`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 228.9 MB (228857881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b89414f6bd966266fdda278b427fe2b3b44a99cb2204fcb3be967189e81770`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85e0539d4a42573477ff73649d0a9c285f717343a5339976aa885b66bca6b6`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:63fde4f0fa3cb401b7d96626976fd7503a91d40951f489f642d2b0cd3bc72942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f30c5721dad6bd0ac3e205ababda2725ba0f9f346c211a4ae24075d4377159e`

```dockerfile
```

-	Layers:
	-	`sha256:3ad2739e2967540ad964a2234db2b9f40b82d49454baf830e572deee630c80af`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:55fe56d9613977793c7eb093924244f71264d83df055a7883423d8ee40dab009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519db0d0a22031fbe6d384c659186149d7079cad84ae17a2e881d81e0c1a8ab7`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.3.62.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:49 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5621c2efdecbf919c759f5ca8442184a28b87233cd6539859cd5f8b28c1c48cc`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 7.5 MB (7534566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c22de91b498b7f9410f12f0ae013b002fe4adda119f6d6b44a595c58af20e`  
		Last Modified: Fri, 20 Nov 2026 03:11:16 GMT  
		Size: 212.7 MB (212664633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9b0dbd6b5f39ef32700670bb5b44c1efcbd391ec558fd68c9ca5900388e089`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff28449a69d9bee794557d4f675091da639a0baffadb1b76b238ce597915a42`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ded85e181340304b5ac98ec709fb9555186deb0fcc8d18273498ee7610253f`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d690ae1fadb468e49e21ed129671c49253a5cd77d936121dfcf32478f77d5`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0adcdfeb07bd393c1b24c93ef29b90bf6714435519ec9863ce49d7f478c28d`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f78813a240e23449f5d00f6c9088712361446b7c25c5a367563b16a06aea5770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17313d7b0c195ae3aee49399fa3387cdaa816e155b3bb58478be4dafd21a0bae`

```dockerfile
```

-	Layers:
	-	`sha256:a36c206842d570c3c8091081d040ffcc0f9a997462ffcdd7acd3211c795d7552`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36-jammy`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3-jammy`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27-jammy`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3-jammy`

```console
$ docker pull clickhouse@sha256:daf7265d827e8ee5d27235b5a1170b3d9706fb0b0cb68787f01bf8b47a3edfeb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5a14cfd8c738c349741c8a2ff72a9c9a23844cc3d0cba2a8d319830837f39a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295643890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a04b50e90e497462980b8065f7c931d9e5b8269e4eda98b957b80d3b1a8366`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:28 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51961be3e22d97430d799c855166031c5a2fb69f4a9bccc5ff5b7fbdb8d512`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 7.6 MB (7551883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7680559c0dd8b4485598606078d51b017ba7f111000aad04c112459d0ff6f03`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 257.2 MB (257151875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577a43cf5d1e240a5b5c2c5702e87f9e5e1cb33526c096d8a0f666fea93a4287`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0315b724a1579a2fbcc8f790e98c2ed8dd1f76dbbd39d74f0acdf21fabd98e28`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd83bbd603d29df5fa2558616dd2ce1e8e9693a29392be8c1c857ab348b05796`  
		Last Modified: Fri, 20 Nov 2026 03:10:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094fe78cd361b3f6d2cb1dc550c8b82cf578f05f9824e9403a9c248dcb8b471a`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f90925cd7a1bdb830a40d49d1ac3b4b202d34cb611aadd73abeb86e8e1926ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b64fff70af30db2272510d8a191cc746b62955cb75c86821b0570c0c3fcf992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363662834406673f7ab3e7aecaad5b7202c9421c5cc1b7b7b5b60de6971605a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e2f89e5546b8429b820349ad960e3acf158a091fd3f9612458bccef6cb68be`  
		Last Modified: Fri, 20 Nov 2026 03:10:53 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:67af4e158f805a280315ee210d2ea2b90586e952282e4567ec7e52334c753253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8994ba90185cb36a705865b321d8240bc26d9886c0ac49f4aa23c21b215f6f9`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.9.27.3
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:45 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8d6ac09decc32a11c8558d8a040f2b1c8b8dd12933094d08a7a9342d1ed720`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 7.5 MB (7534574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9375f3c24ff96f0d94346a33a4912149d304aabe433c0acc625cd3c9e316f1`  
		Last Modified: Fri, 20 Nov 2026 03:11:13 GMT  
		Size: 236.5 MB (236545467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf5825d4fde7afe80033abb6401987e650c7cfb6f03fc46a47de6fe63f85305`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced86f79f89f7bc176a514508dd2a434eebddeb4fe7fce136d57f90a213fe815`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d35bb8a7387085f261cde5564f189401fc484a4c99b268ab26409283f0cdb5`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7f255ce1a2e268cfbd83aa2fb5043d54e03d9e95fa51d9e371a02b308af4ff`  
		Last Modified: Fri, 20 Nov 2026 03:11:09 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7b42acf25e677831e3e526a664873dd01909dc44fac0a604587f495f8a612c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18628803ab1f19ba37c75ed62b00e66c543aa68b2b75b7c9908b7f6332c75d8`

```dockerfile
```

-	Layers:
	-	`sha256:d9d158701640a731ecd37bdc7c4132d33c7c0d7ec64862b83679866ace5fee04`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:09ca5c1f9eee280e8402dcdbdd977ec347b783283e0f25e1d67a0cd55913ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c6ecf6b06fc3caebcce0945689470c4db5251df253b0f3359959204a91bea48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307879719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52c7b165bea45423d833a2db8c73d02c6a6a3ff926ac01cafc0cfbf835144fb`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:31 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf357645bac86bb5a55381406538f201a95dfcf728045ac43daf94310d93dcce`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 7.6 MB (7552021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640b9991a922b1230c7b0e305ac8fe01fbcd39f33d4fdc6bbdfb6abf13bbda5`  
		Last Modified: Fri, 20 Nov 2026 03:11:04 GMT  
		Size: 269.4 MB (269387567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2a24edd84a4eb812b68a94be14c4179add3d75db3c5686ac2f779c9ff25a0a`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7db3d1288e8362c2085ec27a6a03b64c2882f9181a7bc07e2d88d4c3f94a121`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c429d2856735cadaac8bd2bea8e10d3a22032b81590729eafe4e491a8b975f`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394ff4bfb156252e1ee804ca3ec930452804c2d44a419bd55728d49e3abeeb84`  
		Last Modified: Fri, 20 Nov 2026 03:10:59 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5066b1860d6195be017fc8c6f06b7e01e5093a7a385634fb847e476bbdc19592`  
		Last Modified: Fri, 20 Nov 2026 03:11:00 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:fbe46e1f141aca83b2f7a767a6dcf93a0d9cf40161d4d794a4d095172e76b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0cf35c51e5c41f57ac0fbc9e9c56d570c76724e7512d4f0461dafb8f1a1ab4`

```dockerfile
```

-	Layers:
	-	`sha256:4850744fbeb6b4c42e61d90700ddce5e0d484969c2926a83a4eb0d2dcb6f3b56`  
		Last Modified: Fri, 20 Nov 2026 03:10:58 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:242aa0514e8b64dc08bb852a818a4766a8a11a94aaffbbddedf73c287b862d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b65fb53cb7015a9f7d522fc5c6c91f0ef2ea7e194c144cdec47e91e6dd21b2`
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
# Fri, 20 Nov 2026 03:10:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:03 GMT
ARG VERSION=26.10.3.7
# Fri, 20 Nov 2026 03:10:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:36 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:36 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:36 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:36 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbcd3e317da3e9e1aa33d1a31839cafeb14e888606bace1a46020feab148eff`  
		Last Modified: Fri, 20 Nov 2026 03:11:02 GMT  
		Size: 7.5 MB (7534512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a807f4d696bd9f6e9f867dde74e2789b29afdd558c1e2e33ff3f9e8ed109c1cb`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 246.4 MB (246382185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0d2bd161c348c80fab7cbb93f1004a3a19a9430f8aae5e3d3768f4fc3b0cdd`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad163300f4272cbc393e84e48828aa0d3e13e8e8d1d14f912dcb24e494c8aa`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab5cb4854fdefe61b0599674156c29bfb0d2632e9437877a8b8070584e08330`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149b16c20578267f53b446e9b9ca67d4bcf6ed6db929c29aa7faef6b45bd7516`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e206ebb90beeb977ed4194c93d6f62027f3d4d55a9f5bd385213327dbdae7061`  
		Last Modified: Fri, 20 Nov 2026 03:11:03 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:159d68396d6e50c79f8c860e64215a91ccaccb816cfff4937af7d5737e76b12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f485a38fa636818f6d0997967bda013f1417290047ae69278460890c04ef367`

```dockerfile
```

-	Layers:
	-	`sha256:6cbd5c3f1e1401d877dce7357e810e1c9d9ce92995b9dafff822d5199495ac39`  
		Last Modified: Fri, 20 Nov 2026 03:11:01 GMT  
		Size: 28.0 KB (27998 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:1ad7ba610a785a7af49d1f0e9cbe0dba22a7e86dfe3a893493f52e1492b27799
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ed8543de8a3cbff12af6c6823f723995a77e03d363e702c7d638952e16536527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280172265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc3e2ba9c251b8bff69165a89d2e974539138ec5a30ec4b7bb4b21a95544117`
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
# Fri, 20 Nov 2026 03:10:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:12 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:40 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:40 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:40 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:40 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab295160a08087e7572f61bfc94943c11ceb80022525d75a230b5be6f8593c`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 7.6 MB (7551908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3d74348107bdc4dea3d84f0cad9cd1f3ca66ca72f7c34d58b666132b6b8f`  
		Last Modified: Fri, 20 Nov 2026 03:11:11 GMT  
		Size: 241.7 MB (241680495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037743b5cd148820a1d3a3383219daee4b4ddce5f7d176bb8d99bfed92feb4f2`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7f6757b3b6488d2fada03b82163e49f4c7e44d613432b2681fcec089a79424`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d85e302e3af44742d6196b4fbae1d43dcde2e5cbc4dd0cf7b6af70cdc37e502`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15d32ef66585adf9af670f86581f64b345145e91cfe299247fdf2896f45cd7c`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32addc7aa3c26e74fc041adaed9b9f0a962cbf9feeceb8599ac2e5d75306f9`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4d042d8218fe1f3c9ac3d64b1f111f4b3cc6055500b08ce1163e9a2d87e4bd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0f1ed4b780d1ca9511a5cba128acad6be66b9cd7c90d3b35f06cd38933ae22`

```dockerfile
```

-	Layers:
	-	`sha256:9fe77a7ea09d4a7a27a04036d0ee224cdb4615e3fd4a65b27338e058b2dec366`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0c64dbab46bae23cd06a239331f75e1640f988d9e317051137d22233e1acabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0212601c8298923a792aa74413967aa4b1f6586dba6e48524cacae8f660dad4c`
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
# Fri, 20 Nov 2026 03:10:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 20 Nov 2026 03:10:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 20 Nov 2026 03:10:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 20 Nov 2026 03:10:15 GMT
ARG VERSION=26.8.36.3
# Fri, 20 Nov 2026 03:10:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:44 GMT
ENV TZ=UTC
# Fri, 20 Nov 2026 03:10:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 20 Nov 2026 03:10:44 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 20 Nov 2026 03:10:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 20 Nov 2026 03:10:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c919916e53945ce201ae7821a36fcc8cd64f4add5311729376e82434e1aa77d`  
		Last Modified: Fri, 20 Nov 2026 03:11:07 GMT  
		Size: 7.5 MB (7534553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f170c26125cfaac5d9e78cebb2e56414129cff7d5ec5481d8575dcc6a5d2b`  
		Last Modified: Fri, 20 Nov 2026 03:11:12 GMT  
		Size: 226.8 MB (226778459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a3ff1e34ed6b39f0d7109a2049dce975618073f085a364722001062f4f29f3`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144f67ac192e3a4a5b7bb10c778097d190a1a21c02fa7cd646fdc68c3c6803e`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6e4887b72e3ab7407be71a9dce6cfe683298ced0a8e8308bd0bbe8e895993`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0d4716f1e01c1f9de9ccfe009d776221778f2d65ef9c47f1186c9dcd48ac5d`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153e94fad64b1523a181bc213d3d102356bddfcab14b98dbb7417e446816341`  
		Last Modified: Fri, 20 Nov 2026 03:11:08 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b86c2169a469edd97892ef6d302f9dda74f480575f3eb886fa79b011e9ca603f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa88e153e88d753a4fa7702706877ea99e6f26d8c29445808c38ae1c8a65870`

```dockerfile
```

-	Layers:
	-	`sha256:26c0fcf53e55a93c59e1a578a23b56e76dc3a49b0268ae91c375b34c85c887e0`  
		Last Modified: Fri, 20 Nov 2026 03:11:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
