## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:d88288fa30ffd5dcc3edaf49c7cbb7af582d977b05ece9ffe9c7579e19172a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c895dfcfe46cefb0c9309de3c3f69e4a78c2cd182e309a519023dca438210021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 MB (295123147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f57411a0c024a1eb5c775b3bc9d5a790c0bbb76580c3789dafca79d6c8b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:23:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:23:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:23:29 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:23:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:23:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:24:00 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:24:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:24:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:24:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:24:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:24:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a819985c23c763b23578554faa8e3436d8c090aacacea10e166ceb910fb2acc`  
		Last Modified: Fri, 02 Oct 2026 18:24:27 GMT  
		Size: 7.6 MB (7554115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d47449aa70f6787055a65132439480f42a690add541277bffe7a5498891a06`  
		Last Modified: Fri, 02 Oct 2026 18:24:32 GMT  
		Size: 256.9 MB (256947092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9653937e1653967e6d08dd3bee822fa4b96f8622dda6eba80a0f54294d482`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bce75770d985e591e40f383192644009e5f79d3b7052da265c8404abf71800`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a8688b0bb232d25b7ef034bbda1629d246111ec89526d8c3387f7ce9808a2`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fe0e056ef2643e87e8b2576ff61960d856112f17255a366bbaf04e409209a6`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e65444849a1fbd216db60de1f686a9380834d3c4340ce149e6f19a7daa1bf`  
		Last Modified: Fri, 02 Oct 2026 18:24:28 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:76c9b33bc33be7f28bf2d9e8fc41cb83144fd779d889102119e90cf30ebdbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d133a256c5711e8b40939a75267400c366b7a008c0b00594e5cc254a1d150cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f027bab158b48ee0d07221ed4b0d13493fb58ef1f553a505a83b47fa7d89d873`  
		Last Modified: Fri, 02 Oct 2026 18:24:26 GMT  
		Size: 27.8 KB (27767 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c8e65a704d49ddcf58bc209739c3e503a11491ddd7112f92809e6f7fe73f8f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272399136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a60cb729aff703b99658e5c78b7333be45c88f7d418cc777c3303e2c02000`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:24:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 02 Oct 2026 18:24:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPO_CHANNEL=stable
# Fri, 02 Oct 2026 18:24:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 02 Oct 2026 18:24:32 GMT
ARG VERSION=26.9.8.3
# Fri, 02 Oct 2026 18:24:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 02 Oct 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 18:25:04 GMT
ENV TZ=UTC
# Fri, 02 Oct 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.8.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 18:25:04 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 02 Oct 2026 18:25:04 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 02 Oct 2026 18:25:04 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 02 Oct 2026 18:25:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1599775a73fa42282168abe9fa16c45562162ac05fb86dba34955382db6afc0a`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c80b7ddc6518bf4ef7255f8b7fd29f83a6860a6f6e48ffbb14ab3e15be9d8`  
		Last Modified: Fri, 02 Oct 2026 18:25:32 GMT  
		Size: 236.3 MB (236310555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551289985365dfe13f8af9852051dd6d119e2af9df6bafcf4a02cd941d1bfa42`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d9b1a278fffab719df975ee27baf57108f6eaddf13974aba2700d20594681`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d3ef90f2e8b11adb4742609a916dbb467ae96316b2a007f330ac92985cce26`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d1f8a548065061fe8c6fb9b90c64b3bfa04d80d24ee8b43c4c0296b7f814fb`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1471b285cde7ed5dbd38fb935376a2b8a8886b0ce811400696a03b406577e`  
		Last Modified: Fri, 02 Oct 2026 18:25:28 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ac46a440ab24e4359034cda0fc1e0ee6da872e7ac14b9f7a0c7db62c1c2e8120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ebb93f2277f6aaef87b1b2c1bb4cbe757c4fb8b784c9cd98489e969b2f71c`

```dockerfile
```

-	Layers:
	-	`sha256:8a48b093ea3d9c1cfd66bbbbdb4470020392f6474263f7105a99f2d8124dc691`  
		Last Modified: Fri, 02 Oct 2026 18:25:27 GMT  
		Size: 28.0 KB (27979 bytes)  
		MIME: application/vnd.in-toto+json
