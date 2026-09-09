<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.29`](#clickhouse26329)
-	[`clickhouse:26.3.29-jammy`](#clickhouse26329-jammy)
-	[`clickhouse:26.3.29.7`](#clickhouse263297)
-	[`clickhouse:26.3.29.7-jammy`](#clickhouse263297-jammy)
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
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
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
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
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

## `clickhouse:26.3.29`

```console
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.29` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.29` - linux; arm64 variant v8

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

### `clickhouse:26.3.29` - unknown; unknown

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

## `clickhouse:26.3.29-jammy`

```console
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.29-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.29-jammy` - linux; arm64 variant v8

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

### `clickhouse:26.3.29-jammy` - unknown; unknown

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

## `clickhouse:26.3.29.7`

```console
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.29.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.29.7` - linux; arm64 variant v8

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

### `clickhouse:26.3.29.7` - unknown; unknown

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

## `clickhouse:26.3.29.7-jammy`

```console
$ docker pull clickhouse@sha256:0e527da3af805c1e0e0a9549435e507e49bbf8649d3478ce5960a233fafe694b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.29.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2548ad09c97b6f8dc3023b12f68b4d3b987ecfcc76b79e1eeb7a371da2cc580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b406f904bb06335893d08f31aa001b4a43b8dc9872582318d417bfb07b59e6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:07 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:13:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:35 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.29.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d26a79e9728aa84bbebd1041aa15d60fba2897c2e802da6238ecc7e83830a`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 7.6 MB (7553616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba76844ecd94c04639eca77001e77c8bd584bfd22be9ab3fb55d3a046badd43`  
		Last Modified: Fri, 04 Sep 2026 19:14:05 GMT  
		Size: 228.4 MB (228412270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcecd9df8372fdc6dda1386d2d619cfa9be6aedbadfada1c9b01d7375076cfa`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae4d9c91b7d2606103e4bccfc4db65f9b62ae6fb56eb2a469aa7dc23e8dfc44`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fbcaaa9e9da45d92945dc41d86019934757cd595505aaa6da8d242619e781e`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2b1d78174302cbff09987de6484773c2ac0ff81abd0836f95a291eda627cda`  
		Last Modified: Fri, 04 Sep 2026 19:14:02 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2344127d451a19d433413dfbf17425e119abab7932b9538d0f151ab127aa951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79a256543bf2b114a837e1cb29feab03047eca91ba400afb57dca6dae755c96`

```dockerfile
```

-	Layers:
	-	`sha256:3d5892777c643305c76a1253ce9287f5f2f29fece18200de841f6a7c4bb18f35`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.29.7-jammy` - linux; arm64 variant v8

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

### `clickhouse:26.3.29.7-jammy` - unknown; unknown

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

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4.55` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:7cc666a824b49e1e1f73447ea28bd45d3cda705f23553f00f0a008fd2b977e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.4.55-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1c3e5562a092a6626af596ffe05ba8f1bef2bd6b41aea1c96ef9974a2344d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277839281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b8838aaf422798e3467d1b87a5264adfeb93cfa7f9ace293989053fd5b69c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:56 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:56 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:56 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:56 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:12:56 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:29 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:29 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6649c336f9ffbf99c2c29a0cd9889dd92c484b81d129605d0f047719150b6660`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 7.6 MB (7553516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7110920f80db91360f64cb0b3b3efc155bf5bb40fe6519500752845cef30ca`  
		Last Modified: Fri, 04 Sep 2026 19:14:00 GMT  
		Size: 239.7 MB (239678773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7597e06c4c00fe764f2bf1142464c2a5e58307bde99ef6bd8fc86186c2b615c2`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e03160665ad9c8d03d607ae7ba3c4ba8dd5a13b9cf924538fc0f5b956c82c`  
		Last Modified: Fri, 04 Sep 2026 19:13:55 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6c606bee9e3e47fc028825900d2b744271abc30c318b0fbe2d299c81464fd5`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee04ea30478e4220f6a05d84fcaa1a2570c474dd5ebbb81261b55b2e253f8661`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d6b680014cbfbb133dae0702469fef173414d966eb4cd4e73d2c75e67b923`  
		Last Modified: Fri, 04 Sep 2026 19:13:56 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0a8a80241ea1ad81553215d4f3baf45c3da951fe8348782f69627c3aa30ec3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f4dc38ee56c2ba77e494b450c0c8239ad85d37fac69d3640b427397e50e0d5`

```dockerfile
```

-	Layers:
	-	`sha256:b378d18696b480f3c978e6b3d8ae29d35a7c8cfbf7ed420efd143a39760988ab`  
		Last Modified: Fri, 04 Sep 2026 19:13:54 GMT  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6.57` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:e77b08f0c6a91b3d06c324abf0cb0bcdb83eefff50f1841c350eeb0ddd394cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.6.57-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:57fbbffa6623539850c12071e198aa80f7d4315f2a79589e9e19ebb4c6bfac46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266902579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4291bd38ed8fe60cf4f79214e16e3c7f9b5367c2526e9478fae355e931515c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:39 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec21d9688f6c43a95cc425f4fc6952ed5ae7e8b4cbbc7a9da2d512851afdd`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.6 MB (7553580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b60cdba9d252f13828b2c53bf79cda60ff9262fa1873d56b302feb9c3560e`  
		Last Modified: Fri, 04 Sep 2026 19:13:41 GMT  
		Size: 228.7 MB (228742004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cbb520be3c825aa738e8bbc0b2483404c79e5ae56a6fecb978226be553f155`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa8a16a28d5e691e1625203aa6f3ef7711595fc4ebfa2e86325981933b0376c`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967ee330debd9524fc6b6bc173d610356d9b5e4dea9113e24e159c9eb0cb61e2`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbbb86588868db69f58385a15a14302cf2657d665116955602c4858ff960817`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cf9e590e834dc3e209fd75211de055f7b5a7e05c517d0c937adcf832917b18`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f2f2ca178b69f15edb48bac1d914d5ff972d92b819410a09053490c42f2b680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d4cac7db4c4f89cbab57a509a5952dc599321788cd821cc88df5385f90cb76`

```dockerfile
```

-	Layers:
	-	`sha256:3ace53b15acf9fe74ca34d3d736d6c8e1bc1064e913396a344beb194953fb66d`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.7 KB (26735 bytes)  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.2.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
$ docker pull clickhouse@sha256:002c257c8bb9edfd74168660dc7e6a1a33bcdb5a3ed514ac3b27153d7364e09b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:328827cfe7dbb06e20c9b0b2042ef977c98230c792f76a5491ff22e52ce1b981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277998326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ca304fcbaed93d050e56693d54b3e054a156adcf9ee1b2614db89bcbb5db17`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:49 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:21 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7931d8e4a58168b8a90b3b2fdac42f13a164f266671102c236a2ad8bfa7c2a`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 7.6 MB (7553560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39769992e26b8523cd002ee19fd23622b4f31bf0edd098cdaaa2261e81e62c82`  
		Last Modified: Fri, 04 Sep 2026 19:12:51 GMT  
		Size: 239.8 MB (239837770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ba300ef3517253a8d9b3d62e73f0a8b1a7414829f21508c2720c4e61b4bf97`  
		Last Modified: Fri, 04 Sep 2026 19:12:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b178762cd1c0cc80050df13f19d747adc0fc770c30d0ca28ac0e7632e636af38`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2976ba2c4da705ca1a34c7b56b241f1ac91078465d5d29ee7be06c5139ae89c`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f3f08459ae99b2c196457d0e8180e859d814da53b513c023697f1ae9d451e1`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1464d05253ac2a355fec670c862274f567d5aad9effb3fcde4c35b3c65d75b30`  
		Last Modified: Fri, 04 Sep 2026 19:12:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0b0b2ad2ff0a6dd35eb24ca37042adca0fd7ab35ca6c25ed42c0df8d72d0eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 KB (27946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e75ac68d119dfcee4ffe063585d9291e79fe0eae9a1a47126592f7f46b4a62d`

```dockerfile
```

-	Layers:
	-	`sha256:8c22e833982cbb116420a7a0108f9a9e949cc07920b6fcfa64df51bf0752f3ac`  
		Last Modified: Fri, 04 Sep 2026 19:12:47 GMT  
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
