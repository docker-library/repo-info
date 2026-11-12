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
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10-jammy`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3-jammy`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.10.3.7-jammy`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.10.3.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.10.3.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.10.3.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62-jammy`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.62.3-jammy`

```console
$ docker pull clickhouse@sha256:c6ca7583d4187d45697603639e82daefb3ab8cab75ef800eab8227df2349b3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.62.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8770b88ee1bb82f543962096c58f1334466a24ff22420677fa9275dd73bcbf50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d0a0c294883138db8ea03666fba1841351624e7d867587395c4d020e9911c2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:29 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:08:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:57 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:57 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c08e9d9a0a197c513fbf4157327d0c7740af5f11588b12a0ac534552d8ba7`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 7.6 MB (7551009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec57369ac3c46fb6a35dbda703cae742d697b9d8237e345ce230c204501a86`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 228.9 MB (228857722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e815f3ac7c71ed79fa6cd67bf56407d6b9525ce043130987058476752fec4fad`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14efda4d85f831ce20895327432767e84e8ff413596c5237d66858fa944a020c`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c7d40c777d4ddb32a93a0351cf775d787e4129865c198dfb35928abdecc7e7`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2864ff5d248c6a127b160b58f2bfcd967cc274598b839323f666bb7930e2a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d4c5703b67f95459467962c1c72cc85b0b6c1aeea28c2f5e92234c07faeab545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53499c7cc74356a776138700ff32bad2ae7ad14160e80628ad4fd72d6e2cb09`

```dockerfile
```

-	Layers:
	-	`sha256:9661fb74a56e9f676c045f78c4917268491e385d4b9ab3967c0a63cb5aee3180`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 26.2 KB (26223 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.62.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:a37e47696d41e06be2197ee7d6c6a6387515228c652ad2d3f0a55e1ad6a897f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249070446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490c7369871e5b9305e383bbcd49a41f006226b1dc650e962dd122400eafc518`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:02 GMT
ARG VERSION=26.3.62.3
# Wed, 11 Nov 2026 23:14:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:33 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.62.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:33 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfa540fde04126c7aa2e4358dd26d27103b217d2441b8f1939dd5cc0e032987`  
		Last Modified: Wed, 11 Nov 2026 23:14:56 GMT  
		Size: 7.5 MB (7534362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5b20eb9998802e783b5a06754d4157f004aaee5a9a5866e1f32c9cddeeecd7`  
		Last Modified: Wed, 11 Nov 2026 23:15:00 GMT  
		Size: 212.7 MB (212664623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82d94c5f0c37fbe64b8270479196d3f02c7febab6baa9b80f75959c3311a66`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e925e7d153369e1c4347975b1e9ff94d2312dc0c4ba7013627fe3d5fc6d45575`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4428d29cba0790ed429bb113848e4e80fb1ed2827d35d2f7018c014ab85288`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6185207d1e0c156d001670dca88bcc7ff9502189853f6f8b5519f728345be`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acea4be787bfa196681c110e24c684e7fa1bc45dc70ee9b9a8cb8510ef7254c2`  
		Last Modified: Wed, 11 Nov 2026 23:14:57 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.62.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:de2fca47d5427a1bf832349e0589c051239a0c4aebb4f7a0164c8be47d8e3c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99364c5bda79396773aea3ee9fb72b07be2a903f4a777fb67cded9444822f043`

```dockerfile
```

-	Layers:
	-	`sha256:930c48c607347950e07f694af6db58c9dd7a6d0b0ef86e2bffebf1b5954055d4`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36-jammy`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.36.3-jammy`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.36.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.36.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.36.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27-jammy`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.27.3-jammy`

```console
$ docker pull clickhouse@sha256:5343de70609f36798a27b5a0dbfb3219aeec7f5023d836db7e89954870880c68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.27.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:19307f29a829f65431ed744aab43894a1998088e83bee8565e5508e5ed1bd2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295642666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31ff38f158175745d32bd6611fe234282915a0153eb4e207dcfcbf2bbbcef60`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:56 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:56 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:56 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:56 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da510561b6054cbb5d9e02abfaa84b5b1c35fd5f0bfdbbfe896c67b5e824887`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 7.6 MB (7551057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed2f9d7cef018b75d1a0d51383a5e90abb49981ae22938483b82139fc9303d`  
		Last Modified: Wed, 11 Nov 2026 23:09:28 GMT  
		Size: 257.2 MB (257151764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae69b1d47e63c05755b8e2af7bea2df132619261d9e3e8a0f12ca158083d644c`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f76f0404729f61a67ff7c3770072436d71d2c2668c66a311957875b636e478`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367a44ed0f0ebf38a442114697a3135ebdbdad2928569595ed67b3662285cf8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faf8deb0a601dd1ee95c03a3ffe7b103c69c95d109d89a6d069b6133943b9f8`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:968887039c8398a27829314c381a22f32c850b3d6d19a3ddc114d98fdbcea75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 KB (27172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e0fdf8a1f6cfd8d7bca743b23f5a201d90f1777c47d47ad640581fe65360ee`

```dockerfile
```

-	Layers:
	-	`sha256:79f5d9f550f9c5d2d25cd7590cdcccdaacc0c68905299d140813651f293d1e8b`  
		Last Modified: Wed, 11 Nov 2026 23:09:22 GMT  
		Size: 27.2 KB (27172 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.27.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:703d8f02fe3e345fee4556da073ea25f713df5ff7b2362ed7d3cc73dfb365309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272951479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a542dc5a56b6937fb27144462ea5340b6c7ba5c9ac07a2bb3ecfe7f2ecfd84b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:00 GMT
ARG VERSION=26.9.27.3
# Wed, 11 Nov 2026 23:14:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:31 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.27.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:31 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1a25437edc8c5f5a7ce9a02178ec14ff9fbc3225beccd7f182557338220d91`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 7.5 MB (7534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a602c467a2115ffb106ce70c2a6b5e041eb7fdca4f02d522444abd4d0246294`  
		Last Modified: Wed, 11 Nov 2026 23:14:59 GMT  
		Size: 236.5 MB (236545439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a791eadd870b9e890863aa0ed15576485440d9e92eb0db204320b6ba6a3d791c`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7df2941f520ca754bf7a4c4102aed06c1cb37b51da3a0dafbb52a096946fe0`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23704364d61958abd4db1b463dc6165a15b713ebbecf7b6365a6c08eeeea7d46`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ffe759aedb03cdcc77ed50ee7369afeb67bdeacbc29300b3a7f527cd04ed48`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b32d6b34208958a7f0fbe7d4720a130a7419adc594aa29b2e20cea57dda030d`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.27.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b475e5aa88e13de71c0ad92429cc4ab2783cd7498417858baabc1a72873b11ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319588e4443766ea6ad81d48fa57e21d57954faa879e31623a0f0f840e176232`

```dockerfile
```

-	Layers:
	-	`sha256:7d8c66f979125e0dc7834856775fc25940dda00a251cb719ad255fbb619fdf77`  
		Last Modified: Wed, 11 Nov 2026 23:14:54 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:956212821f6e0d8f2d840c5f57623cdcd046d1d5ab9b905058a4215d79decc15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:81a8341fea5d49598c56b2a93a6302b1bf9bd240cc9cb032fbd3d1d0a852a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307878221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc00bcbe32e7cd69e3f8f531edf16934a01648ca729f46115d3482a625e3764`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3231333ac2c3f7f16ae48194109e09f71e9be5323f97be80e7ad89d11916863f`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82cef1d00480cc21cea059ee2d6d9ecd7b07b87d568276eb1ec1ac4dfc9cfe`  
		Last Modified: Wed, 11 Nov 2026 23:09:30 GMT  
		Size: 269.4 MB (269387334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8227dced5f477f8c0d931f7c6d8e008447f6f924c2533455742e132e488c550`  
		Last Modified: Wed, 11 Nov 2026 23:09:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bad35fa1c75cf561daab70571736d3fee61e42e7c1c79ebd0d63dd9484ef4a`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53305cc589b87647bea5645fee20bf824c818348fe813640931ae11770159957`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ca387520627c4907ccb496c705968998e3a6a5ad1eeee9f7520ef869408b2b`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 3.9 KB (3901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d48b8a897ec2cbb3c581eb21af9a15068c100f37ba2718a026f08854ce3e8526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b92916b54b0dfe3e46d4d50cec8e3cf6eca50d0077ab5feb0830f6c85716276`

```dockerfile
```

-	Layers:
	-	`sha256:856934bb5a18c11a542ac463cbbb0fd6858c316232d72b96e6852a2b3e2cead6`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:83158628b06ee2e9795fa384670a3c6311be59b38bed68f0253b27f9a4552d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282788232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67c39b6391970d55ab2a156f27ddbe61e1bdee3d12036837f710ccaea0da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:13:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:13:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:13:55 GMT
ARG VERSION=26.10.3.7
# Wed, 11 Nov 2026 23:13:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:25 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.10.3.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:25 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9638730bd0f6f3b694b27b38adad26cbfc8a6d49ae1643864db94fb81614bb8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 7.5 MB (7534315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9e286b8e58f5ef92d0876110577c9889e6f32fc55780b570e2864925a09dc`  
		Last Modified: Wed, 11 Nov 2026 23:14:53 GMT  
		Size: 246.4 MB (246382193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ecf5a5a0d7092226b2c80af3bd4fb271ffd35e943076b56aefe82308020dff`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c97d12e5162ccdd184556f08a84ccf812f0245b5ed87c378baa9c7493789a2`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 865.7 KB (865747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71aded41084e1d912c5cbf2c0226d3df6698925c6e1e3dd2e597b88d3a55c0`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609c3078cd7ecc4c80ea3fc5c16b409c5f428bd2c4f11adac02b6e5fe302c9`  
		Last Modified: Wed, 11 Nov 2026 23:14:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e0e7f3a983d09019e72d438ea356327f6c8e7782930f787e19714dc60e465`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:be8acf1ec03e79781384b8336caa231c859aeb4bb3e0111b158ab9a34eb88db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873cbfe6d473e7ce63fe08bce825c99a93534b71ca1bd2d62ea387ffc91f53ff`

```dockerfile
```

-	Layers:
	-	`sha256:388b32b6b4df9d9016089be922ccc1cc702d7837cd8f059f9f2a4259a6e625e7`  
		Last Modified: Wed, 11 Nov 2026 23:14:48 GMT  
		Size: 28.0 KB (27997 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:07b744792d5b54da40ff7c5f18a9fcca929fd85f6cc317259dc5beb9dda1f90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f2eae8b0e1cc6d5c857d2e4e47d240efc722919aa2e9aadd6afae0bb1506f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280170959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92cf64053c57ebf67f3df0f65fe0a857b0226825f4cad3254c9c83297abdd22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:08:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:08:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:08:27 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:08:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:08:58 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:08:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:08:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:08:58 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:08:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:08:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41465c0fe0b227c8c0df98ccb1d56b7b7757f72269ae8546dd374b46eef5c437`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 7.6 MB (7551060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450232a436f3ecb77b81b06496b87319676a7966687eb363731453debf039078`  
		Last Modified: Wed, 11 Nov 2026 23:09:29 GMT  
		Size: 241.7 MB (241680318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8136f8489b28484f55cbda6b3959e0f0f34486d095618c291dbbd050df4bfd26`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4352bcea2c834d1957472359f7c078a3f70784d040216e38039c5f2f4263e95`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d6e57f7af85330ff8440eb9fe0516292cf60aeca051e6f086fa1c5ba88f5a4`  
		Last Modified: Wed, 11 Nov 2026 23:09:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f834b8c388fdca65b03ac50d06960d3d73b6cd4f37fdd315734d2c537c9e991`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23c0e0490cbe9057802232a2c8a5e0c87e1b69728bf88b1372c68ce5a329f1d`  
		Last Modified: Wed, 11 Nov 2026 23:09:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8ea0ab049b3dd4877817d67dda0317954b0fbed6e61ad62ed064b384fc6b452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee4927220d7ad0f2de1873bb00794aadadd6620110db2a1befd3f90b11397ea`

```dockerfile
```

-	Layers:
	-	`sha256:d0f14f2552e692924382b882672e0ef2c133ad397ccae1e8a762f66892341d80`  
		Last Modified: Wed, 11 Nov 2026 23:09:24 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:530b85febdea1eb1637f3667804185014abc578c14ec5c0fd5322015c1441c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263184167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ff7a97fc96dbfe6540afb7cd4b14dc5655f59121c9685a460f62b4fd9f1256`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Wed, 11 Nov 2026 23:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPO_CHANNEL=stable
# Wed, 11 Nov 2026 23:14:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Wed, 11 Nov 2026 23:14:01 GMT
ARG VERSION=26.8.36.3
# Wed, 11 Nov 2026 23:14:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Wed, 11 Nov 2026 23:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:28 GMT
ENV TZ=UTC
# Wed, 11 Nov 2026 23:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.36.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Wed, 11 Nov 2026 23:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Wed, 11 Nov 2026 23:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Wed, 11 Nov 2026 23:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9233d5e2cd977528ce98732d964e2b1efdc9d33827e45a180649c81c49070e8c`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 7.5 MB (7534295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5898e28657fb9e08400657952af6919464afed3e554060ceb5920261a90efa2`  
		Last Modified: Wed, 11 Nov 2026 23:14:55 GMT  
		Size: 226.8 MB (226778411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64d7d324e560756ae4ffd6958d7f18e6b0bdb4e14461e9afe9a88f7cdfa9f4d`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99fbaea105bdf61a648495e0d9fc2016482a872df2e91f279d59804c2ad2be3`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0be962e3ac4385fc2ccd72bb94eae82f4da799e895432d9f1e092e1010bf558`  
		Last Modified: Wed, 11 Nov 2026 23:14:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ff1bea48ce2b80284662c0b3feb962c654d32ab3de591c486aa9960668f20c`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66b2ce22a2bbe87cc10a4c2e0e926f4e30b6378b4d7a47282b678b9669e84df`  
		Last Modified: Wed, 11 Nov 2026 23:14:52 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:df9649816c3fdd6b25fcfc434a0fbbc64485392bb7c84ea1a051b86f742e8311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e818047aa3114be8ac1e66a97b0ac965a8be8e222d548b4b8f02ca33a9504ae3`

```dockerfile
```

-	Layers:
	-	`sha256:2f1d02288347f677805f59b7fd21d5ae07fe747f8576110ff4b8f0e331fda226`  
		Last Modified: Wed, 11 Nov 2026 23:14:50 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
