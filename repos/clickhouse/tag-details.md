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
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.29`

```console
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.29-jammy`

```console
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.29.7`

```console
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.29.7-jammy`

```console
$ docker pull clickhouse@sha256:0137fe8128def9eb130755acb5d161152a8752b85922c110df7d81b5c01075c8
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
$ docker pull clickhouse@sha256:4b7a7e96dda2dc3a3d1208471694dac7f3f5c6ec0132313f2b18a65feac8c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247896747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316575f035ff55f9a44094afb2dec2cdcc23c42a03eff465ac938f29b2b55fc6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:59 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:59 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:59 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:59 GMT
ARG VERSION=26.3.29.7
# Fri, 04 Sep 2026 19:12:59 GMT
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b286731f9032d69bd2a999c151c2918c88293f5436a065ec7797680721d18d`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 7.5 MB (7533736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5488813cc1fd53e8130726fa03ea735720daf0c0100a9667b3cc5cbdc296666`  
		Last Modified: Fri, 04 Sep 2026 19:14:01 GMT  
		Size: 211.9 MB (211872511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d492a6dd0b46ceacf5eb21f2956b6e1ab0050038c027a3c4dffe68571dbaa9ca`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69a58b34f179d70cb1342ad4f3a0ddaefae5b65ef4e0cb0d75f5dc612bf7a9`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ff957a50bdd3f44b4140300d6738afce5aa3ff5f0f59a2e04fc51f5d2d2a2`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299fe508e9cf1dc9f503e22e02fab96fb5dc0e10e7514f10a0d0294202822b56`  
		Last Modified: Fri, 04 Sep 2026 19:13:58 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b62d6f8c9d0b543e1692f3f6f26e5aaf700ad019d74ecdb172a6250c3f68d4`  
		Last Modified: Fri, 04 Sep 2026 19:13:59 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.29.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:aa96227f73f73aaeb1a7d681fecd78b9c988c664b68793a6006463c565fe4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c4d3c0d5d98a569f3e21338694f46389a8102003f6c5127503b380188225e8`

```dockerfile
```

-	Layers:
	-	`sha256:496654d9a6ba8bd0035a4b52ecec520551cab884be3dbf04261147e2c2b549dc`  
		Last Modified: Fri, 04 Sep 2026 19:13:57 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4-jammy`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4.55`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.4.55-jammy`

```console
$ docker pull clickhouse@sha256:6d7ade51fa0d7e8d42443744ae33896edd67d701911db2115bb2297218fca3c7
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
$ docker pull clickhouse@sha256:f2c1b54564969b042b04858454c099abd496b083a6fcb8bd0cea9836d66f4c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258429104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0c1114fe102982144d5c4032868cb7099135eb15e2193125035c6be8319e00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:13:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:13:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:13:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:13:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:13:26 GMT
ARG VERSION=26.6.4.55
# Fri, 04 Sep 2026 19:13:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:14:02 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:14:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.4.55 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:14:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:14:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:14:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:14:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05978683d6f847295013f4f059d570995227d41ab47ac28ad3d3654e7498bb1b`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 7.5 MB (7533767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1d57a0310a1cf6e2839459d21aa898139447585991ecff5b1a8c358ed2df49`  
		Last Modified: Fri, 04 Sep 2026 19:14:29 GMT  
		Size: 222.4 MB (222404835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a03aeaefa0dbd5404fc22e461c9a2b26f1c970cface81166c1d385e1c8dd2a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0613d40659f1984eb2f6fe63c2cf3f64333ab9e605f7d631d158157eb3e6230`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed06b61941f43df901b977b5ac6cd6c7e667f20ce9e4b7cf68b8aa895c351cf9`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f641b47ddf0e32b55a44d6fdb8e9f40fb2cd66c18f984ea8b33fa89231608`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6bd72b62a18d544c32742c5815b9552466ba57e27f55c7c4a3868df3d6391`  
		Last Modified: Fri, 04 Sep 2026 19:14:26 GMT  
		Size: 3.6 KB (3635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.4.55-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:e88f7492efb102fdae43860bc2f1e1961145849a3b929afa1f5eb5078a74aa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b451670d7c74767beef7eff11bfbd284ed4d5b6b8314b584d3076341ba1721`

```dockerfile
```

-	Layers:
	-	`sha256:ac1815a8822f1120dd78fe82e283aab6a0cba0a7a0ca9dbe026c4cc3817793dd`  
		Last Modified: Fri, 04 Sep 2026 19:14:25 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6-jammy`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6.57`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.6.57-jammy`

```console
$ docker pull clickhouse@sha256:c011849faf1a3125a34a6c0c7ddd36105a7bc9bf0da47ba793d3c8a53d5b1a7d
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
$ docker pull clickhouse@sha256:77176a5b33e44831e3f61052702e00210f3acd5906a671c48b6c7d51852a9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250211005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cf4dc0134916d1003f6f259b2a99a566819d3b185e5068f7350449553f63f1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:12:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:12:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:12:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:12:38 GMT
ARG VERSION=26.7.6.57
# Fri, 04 Sep 2026 19:12:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:13:14 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.6.57 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:13:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8c218fe356d6b77292f125f0ca8cf0956295b7420be8950fb4195f22154c0`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 7.5 MB (7533815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b932d2991bf1f0f83c3838267168ac66a4aeabd63dc81bb56bd1df1c0373a04f`  
		Last Modified: Fri, 04 Sep 2026 19:13:40 GMT  
		Size: 214.2 MB (214186683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b69fe7299e20717e5fdc55d2e67fc0c0efff652be3e2eba4b69f30f8c7cd4`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1744ea19468a64b70fbe83e34903648f914d2aac4caf1909dca64776360932`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232ee99364380c1ac2d42e2d2d5ba0063c1dfb7e06eef40201f3e9ccc345d007`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5097de1206bda06079df735ebe4e5c4cb3a5440e95a88c11fcb6fb5e095f579`  
		Last Modified: Fri, 04 Sep 2026 19:13:37 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8236c7770e0129db911809e752f30b958529fdd39c5cb3c0f85502b4b3688f33`  
		Last Modified: Fri, 04 Sep 2026 19:13:38 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.6.57-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ebd5a0222f56167852ad154759cb5dd4e26dd9cf0600a0fe8538327f40b15d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b363e5c16462dfd6e6a85cdf193a869279d011e000a2b638df3c26db84260`

```dockerfile
```

-	Layers:
	-	`sha256:fc2d78f14ec6d14a6fa0d6e65925675c98aa3d0f9083c1ce52c164dc352cd2b8`  
		Last Modified: Fri, 04 Sep 2026 19:13:36 GMT  
		Size: 26.9 KB (26923 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2-jammy`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2.7`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.2.7-jammy`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.2.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:6f488dd0ec5da3b685d5512c51868ca453e0320be51f8e1a1f8b584e1ea65d79
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
$ docker pull clickhouse@sha256:cfcd500576e871545be5bfb1d62d4a1eb1cc3d750f2749f2c8746835a2f06c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261146382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbeed35482e86d6aa0da8275a2acfed4c0862c8de6875deb8df899f221d55596`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 04 Sep 2026 19:11:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 04 Sep 2026 19:11:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 04 Sep 2026 19:11:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 04 Sep 2026 19:11:42 GMT
ARG VERSION=26.8.2.7
# Fri, 04 Sep 2026 19:11:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 04 Sep 2026 19:12:13 GMT
ENV TZ=UTC
# Fri, 04 Sep 2026 19:12:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.2.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 04 Sep 2026 19:12:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 04 Sep 2026 19:12:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 04 Sep 2026 19:12:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 04 Sep 2026 19:12:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862feab7ccfab4bcc067a7ad25e621c55660e9779b7a26f6efa13cb8d70498c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 7.5 MB (7533808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0606f077abc2dece04bda88a78402e689baead92d86d269e5e8c94dcb5e748a4`  
		Last Modified: Fri, 04 Sep 2026 19:12:40 GMT  
		Size: 225.1 MB (225122070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb961177aadda04ea1a55916ac6ccdd682b825c62c12b5d415cf9bb0277ba5fc`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d976fc898a48793492ef4b6a9ae25d871521a37d06031ddc9d449812b8788f`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f953898e62abac94f088206f3b853e254f319d9dd45598d0e0478d5497efde6a`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2eaf841fb6de9919d6c81393426faa4b192d915915b2c3609c287d8e0e09cd`  
		Last Modified: Fri, 04 Sep 2026 19:12:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314bd15ffe4d867b49a587b730db54f071a280fe6f222c9db7ff3a3ec08cccb`  
		Last Modified: Fri, 04 Sep 2026 19:12:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ffa0b81e0068fcc4e96bdd6de6fb8c09936fb360f0115d1b1f225d28e9f24f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a439676e211ffdf413f3cbd160156338b85a667b304a71c44b131c5e29fd096`

```dockerfile
```

-	Layers:
	-	`sha256:af50619d0cc319f24389cb29c3027cb3bef13c42a132d30c8d8e9b840955845c`  
		Last Modified: Fri, 04 Sep 2026 19:12:35 GMT  
		Size: 28.2 KB (28182 bytes)  
		MIME: application/vnd.in-toto+json
