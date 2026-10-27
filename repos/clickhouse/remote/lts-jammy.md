## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
