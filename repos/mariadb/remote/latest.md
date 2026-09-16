## `mariadb:latest`

```console
$ docker pull mariadb@sha256:84171a904be62d06ab6929df5476a205ae84914f4a0b67170b851ed41fc4a33b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:715d4d749ddc808c73d2b12d6cd9dbaa5a0e4c83fbfeed1542983f3130a7f04c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121944705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7a2127c8f065ee0202114106d1a4e36fa27bb40f081507b062165c7a676f71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Tue, 15 Sep 2026 23:36:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 15 Sep 2026 23:36:46 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:36:46 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 15 Sep 2026 23:36:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:36:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 15 Sep 2026 23:36:46 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 23:36:46 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 15 Sep 2026 23:36:46 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Tue, 15 Sep 2026 23:36:46 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Tue, 15 Sep 2026 23:36:46 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Tue, 15 Sep 2026 23:36:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 15 Sep 2026 23:37:23 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 15 Sep 2026 23:37:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 15 Sep 2026 23:37:24 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 15 Sep 2026 23:37:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:24 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 15 Sep 2026 23:37:24 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a61465f4944cc6b1e8c31fb9b71a40cb58586325275f1dc8e8a9a1c50f9fd0`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70355d2af3e7e773a9bab9885d358335a8cf1ad16736d474d1f613c648cbe925`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 5.9 MB (5914268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506856be76181f9654c818454dda88d7922dbabc22072a6727fdfa86cfe7b99f`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9faee10bd50f91d21cfd3a88eb96afa9ede4cde94e2e84c9166302a1296734`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019bff698ed7af34427583b49feef4f10f875b3a10742c4908c3a872a2378265`  
		Last Modified: Tue, 15 Sep 2026 23:37:43 GMT  
		Size: 74.4 MB (74413006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ba78a72a4eb6c93bfddc397a09670483b1a2d5bad40025ff6ca30ad57826d`  
		Last Modified: Tue, 15 Sep 2026 23:37:41 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a4f1df78ea6769efeb0a40ee8965d6b30c51f70ece93e68f95c95949f14461`  
		Last Modified: Tue, 15 Sep 2026 23:37:41 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:3d7c45d04d5378e289ef600de6a13f542b2a3ad76c1c3aeb26c863c9312c28e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6189174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a89804a8019835408eb234683bff5e9a814799933199352cf767add68e40a38`

```dockerfile
```

-	Layers:
	-	`sha256:8fe1b1f9dec41ce398f9c0b1aa5d9d9c1446f4f8e95f2e010f8e6ff5201fb8b9`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 6.2 MB (6156442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aae056e191733a3ace88c1e7b04add41b08991d2e9e20b34b2f411967cbf610`  
		Last Modified: Tue, 15 Sep 2026 23:37:40 GMT  
		Size: 32.7 KB (32732 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:8fd98304487bbf442e35d99d385c29f72a10c52ed40dd82dd463d14ef652d2ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119089947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e41e6a5759f044ed1e9af8096a249f1a200389f1a56d29f95ce9cde7d5aa44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Tue, 15 Sep 2026 23:35:58 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 15 Sep 2026 23:36:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:36:17 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 15 Sep 2026 23:36:17 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:36:17 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 15 Sep 2026 23:36:17 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 23:36:17 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 15 Sep 2026 23:36:17 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Tue, 15 Sep 2026 23:36:17 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Tue, 15 Sep 2026 23:36:17 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Tue, 15 Sep 2026 23:36:17 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 15 Sep 2026 23:36:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 15 Sep 2026 23:36:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 15 Sep 2026 23:36:57 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 15 Sep 2026 23:36:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:36:57 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 15 Sep 2026 23:36:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a928a12fc620d095fa3b91fd431f92211b7a4a6a0670fd1d69419ddf84e46b95`  
		Last Modified: Tue, 15 Sep 2026 23:37:15 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57eb70c50ff86fd1a2079bea3557e3d0e04202af71c63354947c8783c4dcccb`  
		Last Modified: Tue, 15 Sep 2026 23:37:16 GMT  
		Size: 5.7 MB (5652855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0df9b945f72bd14ab19c855d0c3f495e0011c92dc72e29c7c78bda3d3c4321`  
		Last Modified: Tue, 15 Sep 2026 23:37:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35fc37beafe63df0bf3be375730ede2f248a2944bd4e8b40d86b408b2995f73`  
		Last Modified: Tue, 15 Sep 2026 23:37:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f9372f72af399ecc9cb6c4ebf29b1e86943cfd33adfbd0d65265d9c16748b3`  
		Last Modified: Tue, 15 Sep 2026 23:37:18 GMT  
		Size: 72.7 MB (72687539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad82afc74ebb0089c53df42ba152746e64ff4e65ae539f2c8d844302baaf7ab`  
		Last Modified: Tue, 15 Sep 2026 23:37:16 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9a2616831fb71902a2230eb943f60ff8ec491791ff64e293f3805468d6b591`  
		Last Modified: Tue, 15 Sep 2026 23:37:17 GMT  
		Size: 8.5 KB (8499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:aab702209ae45a89eb9b2753e099a9b7e9b780d8156e3337b04db0dfcf2a2efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6195846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a92d861005a93eb2991c108dd5a2c0309ce5a0f610aa8cb13c64c794931e52`

```dockerfile
```

-	Layers:
	-	`sha256:e7e58ca063a649be9bbb022c4ae747bc4a05f4d107d967f42a0b25163ec3d280`  
		Last Modified: Tue, 15 Sep 2026 23:37:15 GMT  
		Size: 6.2 MB (6162901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb3f16eef4396348ef998b28c1ec7e885f3904e3d3acdc59d19b5e211b95749`  
		Last Modified: Tue, 15 Sep 2026 23:37:15 GMT  
		Size: 32.9 KB (32945 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:c15fd033dc644fda6117caec60f424771800ffcf4043dbdca2efe42816c05e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115205033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5451052d9f9c4e724eb1d3c1f45f3ef85cf8b502e6323ac3afb5e57821c084b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:14:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 09 Sep 2026 04:15:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 04:15:40 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 09 Sep 2026 04:15:40 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 04:15:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 04:15:41 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 04:15:41 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 09 Sep 2026 04:15:41 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 09 Sep 2026 04:15:41 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 09 Sep 2026 04:15:41 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Wed, 09 Sep 2026 04:15:42 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 09 Sep 2026 04:17:26 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 09 Sep 2026 04:17:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Sep 2026 04:17:28 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 09 Sep 2026 04:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 04:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 04:17:29 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 09 Sep 2026 04:17:29 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e66688a6f92144478600c99f9f1f58fe7df3ef304045f66145f7e7d0250e23`  
		Last Modified: Wed, 09 Sep 2026 04:18:46 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2862d80ef9fb5000453c8474c6c50401619abf92f79b79f50a21a76c347d85c7`  
		Last Modified: Wed, 09 Sep 2026 04:18:47 GMT  
		Size: 5.9 MB (5882437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060585335b3d06d52fb768dd1964e4353b93cfc187b7449c84d9cfc04fcd853f`  
		Last Modified: Wed, 09 Sep 2026 04:18:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac2a1d38640bc90a269317adb27af80677b7cffef60b0a47fee2db88ae52a69`  
		Last Modified: Wed, 09 Sep 2026 04:18:55 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efc72b4823f447bca6550aba231a2283022894acdbdaac866a5f6ca0a38f8fb`  
		Last Modified: Wed, 09 Sep 2026 04:18:57 GMT  
		Size: 74.9 MB (74931398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86991d6b761054025f9a34fcb5454708a7d957a39a75b3f73c17ff9277aec1c2`  
		Last Modified: Wed, 09 Sep 2026 04:18:55 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84957f305dbb138383e55c8b1d896a86c40242b805566ad6871287a0ad4a9369`  
		Last Modified: Wed, 09 Sep 2026 04:18:55 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:17f70973823a106d8d300b0f418c316f7248bf4c01257fa89af9ab3329c6ff06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0f09bb2efd871f4dbc31546f7835f26a7d5ddbf278dd4b570052c3a00f582e`

```dockerfile
```

-	Layers:
	-	`sha256:0749d2fd68d60329f7bf8ea53850c929729b69faaded5d14e4973cfadb15804a`  
		Last Modified: Wed, 09 Sep 2026 04:18:55 GMT  
		Size: 4.3 MB (4274581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69b9a099d2d13fad2e7b57381ee51b43de36914974611084b8b0a2d8200935cc`  
		Last Modified: Wed, 09 Sep 2026 04:18:55 GMT  
		Size: 32.2 KB (32156 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; s390x

```console
$ docker pull mariadb@sha256:f78967f7a3ccf7b28039f14869eb473f46aa756deaa6c74d28eb127b2d9a4a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109695285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7b5718428c5840afa15e4cd53021ce475b17d19c13bdeb758598b375f4c8c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Mon, 24 Aug 2026 18:02:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 24 Aug 2026 18:03:29 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:03:29 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:03:29 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:03:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:03:30 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:30 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:03:30 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:03:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:04:04 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:04:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:04:04 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:04:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:04:05 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:04:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddefb8c414eb9d9ff4007a85cab2e374a53697cd004eeaed8c2903697641fedf`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d195c1a94e3c60a7dd7a074888884ff67e9371454c1569c3a1b623751c297aae`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 5.4 MB (5402945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680fb2f98bb15ed84a3a7be8366103b41f28500a2f2107db67bd6bc72d3c5b89`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bb8865f01144d9c209c7017f935c0d4f1bb449c038f082d8730f7393b8628d`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c656b1480ba87eb8a985de3d2f3dd14c05c78e25ab4d287b9b7eb1910ef14d`  
		Last Modified: Mon, 24 Aug 2026 18:04:37 GMT  
		Size: 74.3 MB (74342770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d494380c6b5c3728f72dc51b2a848e6aafa0c7f16d9a526f7676f8227eb775`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6cd68d72332647190ad5e4bd4cd6f6b80299a9f41c51dc2c7e37c35e5d38ea`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:fe76380a09449b0f7838d80709a979b2ae2df3a4bf5dd2b589e41b71b2f7a8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f352505d9745d54aba80d080c1d6b60b127e306fae61a4f5b3f4505685406c`

```dockerfile
```

-	Layers:
	-	`sha256:9d3dcfaa94f034f4e7cda4d111c620945a2f0d60f5551599f7a1c5e06796573e`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 4.3 MB (4268339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb926d68855e7b8a3413a719343f64b94afe556f0645bc0e3bdcda3427dd42da`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json
