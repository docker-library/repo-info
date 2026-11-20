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
