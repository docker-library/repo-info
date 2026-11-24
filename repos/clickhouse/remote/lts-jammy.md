## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:9d5e6310e7eb02c146a3227314e6b6fc62932fbb71a4be92d41509cdb7b0e128
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d1199e4de1989cc0ab84eca603d22e452d103558aec40cb24f9a9a144370dfd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280862884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa78eb01cb13fd3d8ad835ebdcd9937d139dc7c1ebf7c96953084b270210c07e`
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
# Mon, 23 Nov 2026 19:35:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:35:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:35:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:35:34 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:35:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:35:58 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:35:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:35:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:35:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:35:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:35:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25f1841697531e1051f8558739aad03e77139fde883a4c0bdefa3db5caf9b8`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 7.5 MB (7549071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74b762b469a77ff8e3eb69379262a2d36a1e4226b4eb0de35ac3b389684b54`  
		Last Modified: Mon, 23 Nov 2026 19:36:28 GMT  
		Size: 242.4 MB (242373948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a13a25597e68459723dbede62697d3504451a4924ac4af14d760e740035944`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f901e4d9e320678be6afdf7b14274f6238a3163c5215ee652e882a68b08e3f70`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6712762c2cefc8ce11085c61603c43a4665e1d8c1101cc7ef19670393547515b`  
		Last Modified: Mon, 23 Nov 2026 19:36:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707760b076833920bee3b65e68c6cbd7b19e904cd6bf53c54d4af8e1afc111d`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ae53e2c891b0b391f06691c0ebc54dab8640c2a4a61f758a77eaf75d44a66`  
		Last Modified: Mon, 23 Nov 2026 19:36:25 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:13b7b5b48a192c83ed93b829d10e60cfde2668ce41b7d42a2e3dc237d3c99bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f876c6198f0442345713a09b5f7375a0725f0fd4fff0b0e25297dabba19c2e48`

```dockerfile
```

-	Layers:
	-	`sha256:817baa7f6ffc4bb8ff4f3032d2b7789015097c8ff6016795c8c0997dca2316a8`  
		Last Modified: Mon, 23 Nov 2026 19:36:23 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f94767fbde060069a2c72a3bfd47df3ccb06bfd20930955c365b2a8e75354152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263328404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a3708b703a38845d5a1b5c8f49cef94e77c4b1a40319782c4f7bef16fca5`
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
# Mon, 23 Nov 2026 19:33:16 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 23 Nov 2026 19:33:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPO_CHANNEL=stable
# Mon, 23 Nov 2026 19:33:16 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 23 Nov 2026 19:33:16 GMT
ARG VERSION=26.8.44.3
# Mon, 23 Nov 2026 19:33:16 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
ENV LANG=en_US.UTF-8
# Mon, 23 Nov 2026 19:33:44 GMT
ENV TZ=UTC
# Mon, 23 Nov 2026 19:33:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.44.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 19:33:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 23 Nov 2026 19:33:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 23 Nov 2026 19:33:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 23 Nov 2026 19:33:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a22d26218809759e084b6c0762b10cf1780954bb6ae107f6ebe1887583b526`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 7.5 MB (7532204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb3a0ce432633ce21e5235ea83bddea0c70164741f4aa46f58bd15efc3d6d02`  
		Last Modified: Mon, 23 Nov 2026 19:34:10 GMT  
		Size: 226.9 MB (226924754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f99969a09d6ad25b8382a06071d2669f81464628a9100562e16213bf31b502`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8bc4329a7115b4f0d176240a620c852c21edf78d9df14199be77f35fed048a`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c37641595183cb1aa00f0874ea2d70b19097b6dc626abc9618981c1fc8e76a`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3592a116eee20b0278887ee3aba9ff889c2aad0a17d23e8d8ccf34b6522cf1f`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f98a575d9c1225e32b379b77c7d97703210de2932d94ced1444ff82adb6f2`  
		Last Modified: Mon, 23 Nov 2026 19:34:07 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05484768d6ef6bfd59c3ff61297967a83d10380a791bb8338dbe0f52b0a170df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6726b3cc5be43bd0e11fcbe00e75a05f2c08c03afb7541575749318bc4ea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:f276404c4a39f2570968a185f29d76ad4440b8ee998aa2d5ab2854c3e580a2d5`  
		Last Modified: Mon, 23 Nov 2026 19:34:06 GMT  
		Size: 27.6 KB (27563 bytes)  
		MIME: application/vnd.in-toto+json
