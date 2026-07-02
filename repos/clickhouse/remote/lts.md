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
